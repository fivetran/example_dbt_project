with example_one as (

  select * from {{ ref('example_one') }}

  )
,

example_two as (

  select * from {{ ref('example_two') }}
  
  )

select * from example one
  left join example_two on example_two.id = example_one.team_id
