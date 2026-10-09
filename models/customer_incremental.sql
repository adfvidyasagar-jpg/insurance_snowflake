{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}

select
    customer_id,
    customer_name,
    email,
    customer_status,
    updated_date

from {{ source('insurance_raw', 'customer_incremental_source') }}

{% if is_incremental() %}

where updated_date > (
    select max(updated_date)
    from {{ this }}
)

{% endif %}