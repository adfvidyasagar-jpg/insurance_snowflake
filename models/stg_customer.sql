{{ config(materialized='table') }}

SELECT
    CUSTOMER_ID, CUSTOMER_NUMBER, FIRST_NAME, LAST_NAME, 
    DATE_OF_BIRTH, GENDER, EMAIL, PHONE, CITY, STATE, 
    COUNTRY, CUSTOMER_SINCE, CREATED_TIMESTAMP
FROM {{ source('insurance_raw', 'customer') }}