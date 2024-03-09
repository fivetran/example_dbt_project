with source_data as (
    select max(_fivetran_synced) as most_recent_sync from {{ source('log_data', 'user') }}
    where _fivetran_deleted = 'False'
)

select
'source_table_one' as table_name
, most_recent_sync
from source_data
