{% snapshot Orignal_record %}

{{
    config(                            
      target_schema='snapshots',    
      unique_key='ORDER_ID',
      strategy='timestamp',
      updated_at='Order_Date'
    )
}}

select * from {{ source('SNOW_SQL', 'ORDERS') }} -- The query to select data from the source table

{% endsnapshot %}
