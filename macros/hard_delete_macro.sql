{% macro hard_delete_macro() %}

{% for drop_table in var("delete_from_tables") %}
    {% set find_query %}

        select * from {{var("delete_from_database")}}.{{var("delete_from_schema")}}.{{ drop_table }} where _fivetran_deleted = 'True'

    {% endset %}
    {% set find_results = run_query(find_query) %}
    {% if find_results|length > 0 %}
        {{ log('The table ' ~ drop_table ~ ' has ' ~ find_results.rows | length ~ ' rows to delete', info=True) }}
        {% set drop_query %}

            delete from {{var("delete_from_database")}}.{{var("delete_from_schema")}}.{{ drop_table }} where _fivetran_deleted = 'True'
            
        {% endset %}
        {% set drop_results = run_query(drop_query) %}
        {{ log('Records successfully dropped from ' ~ drop_table, info=True) }}
    {% else %}
        {{ log('There are no records marked for delete on table ' ~ drop_table, info=True) }}
    {% endif %}
{% endfor %}

{% endmacro %}
