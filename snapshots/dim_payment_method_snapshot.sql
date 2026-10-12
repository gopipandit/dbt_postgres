
{% snapshot dim_payment_method_snapshot %}

{{
    config(
        target_schema='xyz_analytics',
        unique_key='payment_method',
        strategy='timestamp',
        updated_at='snapshot_updated_at'
    )
}}

SELECT DISTINCT
    payment_method,
    CURRENT_TIMESTAMP AS snapshot_updated_at
FROM {{ ref('stage_payments') }}

{% endsnapshot %}
