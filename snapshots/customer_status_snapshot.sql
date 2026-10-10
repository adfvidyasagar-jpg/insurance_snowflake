
{% snapshot customer_status_snapshot %}

{{
    config(
        target_schema='RAW',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

SELECT
    customer_id,
    customer_name,
    email,
    customer_status,
    updated_at

FROM {{ source('insurance_raw', 'customer_snapshot_source') }}

{% endsnapshot %}
