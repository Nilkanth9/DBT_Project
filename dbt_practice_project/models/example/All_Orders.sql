-- models/All_Orders.sql

{{
    config(
        materialized ='incremental',
        unique_key ='ORDER_ID'
    )
}}

with new_orders as (
    select *
    from {{ source('SNOW_SQL', 'ORDERS') }}
    {% if is_incremental() %}
    where ORDER_ID not in (select ORDER_ID from {{ this }})  -- Only include new rows
    {% endif %}
)

select * 
from new_orders
