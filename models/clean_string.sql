{% macro clean_string(column_name) %}

    case
        when {{ column_name }} is null then 'UNKNOWN'
        when trim({{ column_name }}) = '' then 'UNKNOWN'
        else trim({{ column_name }})
    end

{% endmacro %}