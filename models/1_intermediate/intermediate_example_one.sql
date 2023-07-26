with example_one as (

  select * from {{ ref('staging_example_one') }}

  )
,

example_two as (

  select * from {{ ref('staging_example_two') }}
  
  )

select * from example_one
union
select * from example_two
