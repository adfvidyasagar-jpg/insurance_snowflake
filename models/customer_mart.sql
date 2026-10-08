{{ config(materialized='table') }}

{% set customer_columns = [
    'CUSTOMER_ID',
    'CUSTOMER_NUMBER',
    'FIRST_NAME',
    'LAST_NAME',
    'GENDER',
    'CITY',
    'STATE',
    'COUNTRY',
    'CUSTOMER_SINCE'
] %}

SELECT
    {% for column in customer_columns %}
        {{ column }}{% if not loop.last %},{% endif %}
    {% endfor %}

FROM {{ ref('stg_customer') }}