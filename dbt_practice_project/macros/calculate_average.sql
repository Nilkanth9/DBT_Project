{% macro calculate_average(column_name, table_name, filter_condition=None) %}
    (select
        avg({{ column_name }})
    from
        {{ table_name }}
    {% if filter_condition is not none %}
    where
        {{ filter_condition }}
    {% endif %})
{% endmacro %}
