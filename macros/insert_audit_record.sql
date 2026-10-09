{% macro insert_audit_record(model_name, status) %}

    insert into {{ target.database }}.AUDIT.DBT_MODEL_AUDIT
    (
        MODEL_NAME,
        EXECUTION_TIME,
        EXECUTION_STATUS,
        DBT_INVOCATION_ID
    )
    values
    (
        '{{ model_name }}',
        current_timestamp(),
        '{{ status }}',
        '{{ invocation_id }}'
    )

{% endmacro %}