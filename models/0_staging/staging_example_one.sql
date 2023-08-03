with source_data as (
    select max(_fivetran_synced) as most_recent_sync from {{ source('connector_name_schema_name', 'table_name') }}
    where _fivetran_deleted = 'False'
)

select
'source_table_one' as table_name
, most_recent_sync
from source_data
