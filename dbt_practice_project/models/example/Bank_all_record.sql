select *
from {{ source('SNOW_SQL', 'BANK_DETAILS1') }}
