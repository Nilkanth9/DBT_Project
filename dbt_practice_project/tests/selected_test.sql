-- tests/pdays_test.sql
SELECT 
    PDAYS
FROM 
    {{ ref('selected_col') }}
WHERE 
    PDAYS < -1
