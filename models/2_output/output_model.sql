with int_data as (
  select * from {{ ref('intermediate_example_one') }}
  )

select
table_name
, case when 
  date(most_recent_sync) > date('2023-01-01') then 'this data is fresh' 
  else 'this data is stale' 
  end as data_freshness
from int_data
