{{ config(
    pre_hook="{{ insert_audit_record(this.name, 'STARTED') }}",
    post_hook="{{ insert_audit_record(this.name, 'SUCCESS') }}"
) }}

select
    customer_id,
    first_name,
    last_name,
    email
from {{ source('insurance_raw', 'customer') }}