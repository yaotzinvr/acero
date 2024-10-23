SELECT
    age,
    marital,
    job,
    education,
    default_,
    balance,
    housing,
    loan,
    contact,
    day,
    month,
    duration,
    campaign,
    pdays,
    previous,
    poutcome,
    y
FROM {{ ref('stg_bank_marketing') }}
GROUP BY
    age,
    marital,
    job,
    education,
    default_,
    balance,
    housing,
    loan,
    contact,
    day,
    month,
    duration,
    campaign,
    pdays,
    previous,
    poutcome,
    y
HAVING count(*) > 1