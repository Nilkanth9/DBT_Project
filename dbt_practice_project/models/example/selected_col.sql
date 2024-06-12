WITH 
  common_table_1 AS (
    SELECT *
    FROM SNOW_SQL.PUBLIC.BANK_DETAILS1
  ),
  common_table_2 AS (
    SELECT
      job,
      marital,
      education,
      balance,
      housing,
      loan,
      DURATION,
      PDAYS
    FROM
      common_table_1
  )
SELECT
  *
FROM
  common_table_2
