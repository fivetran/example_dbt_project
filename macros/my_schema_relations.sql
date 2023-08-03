{% macro my_schema_relations() %}

{% set my_schema_relations = dbt_utils.get_relations_by_pattern(
    schema_pattern='%fivetran%',
    table_pattern='%'
) %}

{% set sql_to_execute = [] %}

{{ log('We found these tables that match your patterns:', info=True) }}

{% for relation in my_schema_relations %}
    {% do log(relation, info=True) %}
{% endfor %}
{% endmacro %}
