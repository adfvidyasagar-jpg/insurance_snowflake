{{ config(
    post_hook="{{ insert_audit_record(this.name, 'SUCCESS') }}"
) }}

select
    customer_id,
    first_name,
    last_name
from {{ source('insurance_raw', 'customer') }}