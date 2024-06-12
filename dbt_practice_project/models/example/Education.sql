with edu_details as (
    select *
    from {{ ref('Bank_all_record')}}
    where education = 'secondary' and balance >=1000
)
select*
from edu_details
