{{ config(
    materialized='table',
    unique_key='payment_method_key',
    target_schema='xyz_analytics'
) }}


SELECT
    dbt_scd_id AS payment_method_key,
    payment_method,
    dbt_valid_from AS effective_from,
    dbt_valid_to AS effective_till,
    CASE
        WHEN dbt_valid_to IS NULL THEN TRUE
        ELSE FALSE
    END AS is_current
FROM {{ ref('dim_payment_method_snapshot') }}
