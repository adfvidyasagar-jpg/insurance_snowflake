{% test is_not_future_date(model, column_name) %}

SELECT
    {{ column_name }}
FROM {{ model }}
WHERE {{ column_name }} > CURRENT_DATE()

{% endtest %}