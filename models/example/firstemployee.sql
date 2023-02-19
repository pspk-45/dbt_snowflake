{{
config(
materialization='incremental',
unique_key='empcode',
merge_update_columns=['job','salary']

)

}}


with employeedetails as
(select * from employee
)
select * from employeedetails
