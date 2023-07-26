-- {{ config(
--     enabled=true | false,
--     tags="<string>" | ["<string>"],
--     pre_hook="<sql-statement>" | ["<sql-statement>"],
--     post_hook="<sql-statement>" | ["<sql-statement>"],
--     database="<string>",
--     schema="<string>",
--     alias="<string>",
--     persist_docs={<dict>},
--     meta={<dict>},
--     grants={<dict>},
--     contract={<dictionary>}
-- ) }}

with source_data as (
    select * from {{ source('sql_server_dbo', 'customers') }}
    where id = 12345
)

select *
from source_data
