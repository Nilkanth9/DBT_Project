WITH filtered_data AS (
    {{ filter_yes_data('Education', 'LOAN') }}
)
SELECT *
FROM filtered_data