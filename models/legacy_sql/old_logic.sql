{{ write_raw_statements(

"
-------------------------------------------------Insert_Code_Below------------------------
    select * from database.fivetran_log.log
    where event in ('WARNING', 'ERROR')
-------------------------------------------------Insert_Code_Above------------------------
"


)}}

select current_timestamp as run_time, 'success' as the_result
