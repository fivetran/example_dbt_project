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

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
