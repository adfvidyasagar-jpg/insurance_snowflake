{% macro generate_surrogate_key(columns) %}

    sha2_hex(
        concat(
            {% for column in columns %}
                coalesce(cast({{ column }} as varchar), '')
                {% if not loop.last %}, '|', {% endif %}
            {% endfor %}
        ),
        256
    )

{% endmacro %}