CREATE DATABASE MYOB;

use MYOB;
alter database myob read only =1;
alter database myob read only =0;




create table employees (
employee_id int,
first_name varchar  (50),
last_name varchar (50),
hourly_pay decimal (5,2),
hire_date date
);

insert into employees
values (1, "Eugene", "Krabs", 25-50, '2023-01-02');

insert into employees
values( 2, "Ubong", "Essien", 15-50, '2023-01-03'),
      ( 3, "Anala", "Chidera", 30-50, '2023-01-04'),
      ( 4, "Stella", "vice", 15-50, '2023-01-05'),
      ( 5, "Mrs Nkem", "U", 12-50, '2023-01-06');
      
/*when you insert the row with missing data*/

insert into employees( employee_id, first_name, last_name)
values (6, 'Queen', 'Jegede');

select * from employees;

update employees
set hourly_pay = 42-01,
where employee_id = 6;

select *
 from employees 
where employee_id=3;

select *
 from employees 
where hire_date = '2023-01-02';

select *
 from employees 
where first_name = 'stella';

select *
 from employees 
where last_name = 'Essien';

select *
 from employees ;
      