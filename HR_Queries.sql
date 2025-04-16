create database hr_database;
use hr_database;
create table hrdata (emp_no int8 primary key, gender varchar(50) not null, marital_status varchar(50), age_band varchar(50), age int8, department varchar(50), education varchar(50),
education_field varchar(50), job_role varchar(50), business_travel varchar(50), employee_count int8, attrition varchar(50), attrition_label varchar(50), job_satisfaction int8,
active_employee int8);
desc hrdata;
select * from hrdata;

select sum(employee_count) emp_count from hrdata 
# where education = 'high school';
#where department = 'sales';
where education_field= 'medical';

select count(attrition) from hrdata where attrition= 'yes' and department ='r&d' and education_field= 'medical' and education= 'high school';

select concat(round(((select count(attrition) from hrdata where attrition = 'yes' and department= 'sales')/
sum(employee_count))*100,2),' %') Attrition_Rate from hrdata
where department = 'sales';

select sum(if(attrition='yes',0,1)) active_employees from hrdata where gender='male';

select round(avg(age)) avg_age from hrdata;

select gender, count(attrition) attrition from hrdata where attrition = 'yes' and education= 'high school' group by 1 order by 2 desc;

select department, attrition_count,(attrition_count/(select sum(if(attrition='yes',1,0)) from hrdata where education='high school'))*100 percentage  from 
(select department, sum(if(attrition='yes',1,0)) attrition_count from hrdata where education='high school' group by 1)abc;
# same
select department, count(attrition),round((count(attrition)/(select count(attrition) from hrdata where attrition='yes' and education='high school'))*100,2) percentage
from hrdata where attrition='yes' and education='high school' group by 1 order by 2 desc;
# same less filters
select department, count(attrition),round((count(attrition)/(select count(attrition) from hrdata where attrition='yes'))*100,2) percentage
from hrdata where attrition='yes' group by 1 order by 2 desc;
# same
select department, count(attrition), count(attrition)*100/sum(count(attrition)) over() as percentage from hrdata where attrition='yes' group by 1 order by 2 desc;

select department, count(attrition),round((count(attrition)/(count(attrition) over())),2) percentage
from hrdata where attrition='yes' and education='high school' group by 1 order by 2 desc;

# cast to change data_type with query
# cast()-----cast(column) as numeric

select age, sum(employee_count) from hrdata where department='r&d' group by 1 order by 1;

select education_field, count(attrition) from hrdata where attrition='yes' and department='sales' group by 1 order by 2 desc;

select age_band, gender, count(attrition), count(attrition)*100/sum(count(attrition)) over() percent_of_total
 from hrdata where attrition='yes' group by 1,2 order by 1,2;

# create extension if not exists tablefunc;
 create extension if not exists tablefunc;
 
 select * from crosstab('select job_role,job_satisfaction,sum(employee_count) from hrdata group by 1,2 order by 1,2') as ct
(job_role varchar(50), one int, two int, three int, four int) order by job_role;

select age_band, gender, sum(employee_count) from hrdata group by 1,2 order by 1,2 desc;