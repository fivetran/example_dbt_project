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
    select * from {{ source('nhl_standings', 'hockey_standings') }}
    where _fivetran_deleted = 'False'
)

select *
from source_data
