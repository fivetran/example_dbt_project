{% macro write_raw_statements(sql) %}

{% if execute %}
  {{ log(sql, info=True) }}
  -- Execute the query and capture the result
  {% set results = run_query(sql) %}
  {% if results|length > 0 %}
    {{ log('The above code was executed successfully', info=True) }}
    {{ log('This query produced ' ~ results.rows | length ~ ' rows', info=True) }} 
  {% else %}
    {{ log('The above code failed', info=True) }}
    {{ log(results.message ~ 'This is not working', info=True) }} 
    {{ log(results.adapter_response ~ 'This did not work', info=True) }}
  {% endif %}
{% endif %}

{% endmacro %}
