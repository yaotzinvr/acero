
{{ config(materialized='table') }}

with bank_mkt AS(
    SELECT
        *,
        case
            when age <20 then 'menor_20'
            when age >= 20 and age < 30 then '20_30'
            when age >= 30 and age < 40 then '30_40'
            when age >= 40 and age < 50 then '40_50'
            when age >= 50 and age < 60 then '50_60'
            when age >= 60 and age < 70 then '60_70'
            else  'mayor_70'
        end as age_range
    FROM {{ ref('stg_bank_marketing') }}
)
select
    age_range,job,marital,education,
    count(*) as total,
    sum(case when y is True then 1 else 0 end) as total_subscribes,
    ( sum(case when y is True then 1 else 0 end) / cast(count(*) as decimal) ) * 100 as conversion_rate,
    sum(case when housing is True then 1 else 0 end) as has_housing_loan,
    sum(case when loan is True then 1 else 0 end) as has_personal_loan,
    sum(balance) as balance_total,
    sum(campaign) as contacts_total,
    sum(duration) as duration_total
from bank_mkt
group by age_range,job,marital,education


