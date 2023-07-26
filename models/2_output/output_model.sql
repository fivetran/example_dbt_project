with int_data as (
  select * from {{ ref('intermediate_example_one') }}
  )

select
table_name
, case when m
