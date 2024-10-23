SELECT *
FROM {{ ref('stg_bank_marketing') }}
WHERE
    duration = 0
    and
    y is true