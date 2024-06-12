-- tests/pdays_test.sql
SELECT 
    BALANCE
FROM 
    {{ ref('Education') }}
WHERE 
    BALANCE < 1000
