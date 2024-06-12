
with source_data as (
    select *
    from {{ source('SNOW_SQL', 'BANK_DETAILS1') }}
)

select
    {{ calculate_average('balance', 'source_data', "education = 'secondary'") }} as avg_secondary_education_balance,
    --optional{{ calculate_average('balance', 'source_data') }} as avg_balance
from
    source_data
