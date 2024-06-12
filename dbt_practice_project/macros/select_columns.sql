{% macro select_columns(columns) %}
{% for column in columns %}
    {{ column }}{% if not loop.last %},{% endif %}
{% endfor %}
{% endmacro %}