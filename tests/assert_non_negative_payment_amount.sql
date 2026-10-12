
SELECT
    payment_id,
    amount
FROM {{ ref('stage_payments') }}
WHERE amount < 0
