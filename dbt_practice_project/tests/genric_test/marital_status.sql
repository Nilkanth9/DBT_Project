{% test marital_status(model, column_name) %}

with invalid_marital_status as (
    select
        {{ column_name }} as col
    from {{ model }}
    where {{ column_name }} not in ('single', 'married', 'divorced')
)

select * from invalid_marital_status

{% endtest %}
