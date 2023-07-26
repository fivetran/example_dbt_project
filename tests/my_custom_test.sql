with make_sure as (
  select count(*) as num_records from {{ ref('staging_example_two' )}}
  )

select * from make_sure where num_records > 1
