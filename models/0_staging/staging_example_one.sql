/*
There are many additional configurations for models, here are a few examples:
{{ config(
    enabled=true | false,
    tags="<string>" | ["<string>"],
    pre_hook="<sql-statement>" | ["<sql-statement>"],
    post_hook="<sql-statement>" | ["<sql-statement>"],
    database="<string>",
    schema="<string>",
    alias="<string>",
    persist_docs={<dict>},
    meta={<dict>},
    grants={<dict>},
    contract={<dictionary>}
) }}

*/

with source_data as (
    select max(_fivetran_synced) as most_recent_sync from {{ source('connector_name_schema_name', 'table_name') }}
    where _fivetran_deleted = 'False'
)

select
'source_table_one' as table_name
, most_recent_sync
from source_data
