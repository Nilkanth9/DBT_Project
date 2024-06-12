{% macro filter_yes_data(model_name, column_name) %}
    (SELECT *
    FROM {{ model_name }}
    WHERE {{ column_name }} = 'yes')
{% endmacro %}
