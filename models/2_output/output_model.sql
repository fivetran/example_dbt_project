with int_data as (
  select * from {{ ref('intermediate_example_one') }}
  )

select 
