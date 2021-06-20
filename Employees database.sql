create table employees(
emp_id int NOT NULL,
first_name varchar(20) Not null,
last_name varchar(20) NOT NULL,
salary int ,
primary key(emp_id)
);
select * from employees;
alter table employees rename to sales_employees;
select * from sales_employees;
insert into sales_employees(emp_id,first_name,last_name,salary) values (6,'monica','geller',20000);
select * from sales_employees;
select * from tech_employees;
insert into tech_employees(emp_id,first_name,last_name,salary) values (1,'barny','strinson',200000);
insert into tech_employees(emp_id,first_name,last_name,salary) values (2,'robin','srbaski',70000);
insert into tech_employees(emp_id,first_name,last_name,salary) values (3,'rayn','floto',50000);
insert into tech_employees(emp_id,first_name,last_name,salary) values (4,'ted','mosbi',10000);
select * from tech_employees;
select avg(salary),last_name from sales_employees group by last_name having last_name='geller';
select * from sales_employees order by salary desc;
alter table sales_employees add column mob varchar(10);
alter table tech_employees add column mob varchar(10);
select * from sales_employees;
select * from tech_employees;
update sales_employees set mob='mi'where emp_id = 1 ;
update sales_employees set mob='samsung'where emp_id = 2 ;
update sales_employees set mob='apple'where emp_id = 3 ;
update sales_employees set mob='nokia'where emp_id = 4 ;
update sales_employees set mob='onepluse'where emp_id = 5 ;
update sales_employees set mob='mi'where emp_id = 6 ;
select * from sales_employees;
update tech_employees set mob='apple'where emp_id = 1 ;
update tech_employees set mob='onepluse'where emp_id = 2 ;
update tech_employees set mob='max'where emp_id = 3 ;
update tech_employees set mob='nokia'where emp_id = 4 ;
select * from tech_employees;
select mob from sales_employees union select mob from tech_employees;
select mob from sales_employees union all select mob from tech_employees;
select sales_employees.emp_id,sales_employees.salary,sales_employees.mob from sales_employees inner join tech_employees on sales_employees.mob =tech_employees.mob;
select sales_employees.emp_id,sales_employees.salary,sales_employees.mob from sales_employees left join tech_employees on sales_employees.mob =tech_employees.mob;
select sales_employees.emp_id,sales_employees.salary,sales_employees.mob from sales_employees right join tech_employees on sales_employees.mob =tech_employees.mob;
select sales_employees.emp_id,sales_employees.salary,sales_employees.mob from sales_employees left join tech_employees on sales_employees.mob =tech_employees.mob
union select sales_employees.emp_id,sales_employees.salary,sales_employees.mob from sales_employees right join tech_employees on sales_employees.mob =tech_employees.mob;
select * from sales_employees cross join tech_employees;
