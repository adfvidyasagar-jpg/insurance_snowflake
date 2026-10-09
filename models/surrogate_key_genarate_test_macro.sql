{{ config(materialized='table') }}

select

    {{ generate_surrogate_key([
        'customer_id',
        'first_name',
        'last_name',
        'date_of_birth'
    ]) }} as customer_sk,

    customer_id,
    first_name,
    last_name,
    date_of_birth

from {{ ref('stg_customer') }}