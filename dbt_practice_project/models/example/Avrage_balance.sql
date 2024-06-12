{{ config(
    materialized='table'
) }}

select
    education,
    housing,
    count(*) as num_records,
    avg(balance) as avg_balance
from {{ ref('Education') }}
group by
    education,
    housing