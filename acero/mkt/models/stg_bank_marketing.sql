

SELECT
    age,
    LOWER(TRIM(job)) AS job,
    LOWER(TRIM(marital)) AS marital,
    LOWER(TRIM(education)) AS education,
    `default` AS default_,
    balance,
    housing,
    loan,
    LOWER(TRIM(contact)) AS contact,
    day,
    LOWER(TRIM(month)) AS month,
    duration,
    campaign,
    pdays,
    previous,
    LOWER(TRIM(poutcome)) AS poutcome,
    y
FROM {{ source('datamart', 'raw_bank_marketing') }}
