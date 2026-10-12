
{{ config(materialized='view') }}

SELECT
    id AS payment_id,
    order_id,
    payment_method,
    amount AS original_amount,
    {{ tax_amount('amount', 0.18) }} AS amount_with_tax
FROM {{ source('jaffle_shop', 'raw_payments') }}
