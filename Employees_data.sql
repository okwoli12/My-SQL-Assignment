CREATE DATABASE EMPLOYEES;
USE EMPLOYEES;

create table employees_data(
Name char (50),
Age int, 
Gender char, (10)
Department char (20),
Salary int,
Address varchar (100),
Position varchar (50),
Country char (20)
);
alter table employees_id
modify column gender char genchar(10); 

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ( 'Kerry Kwem Ulaka', 28, 'Female', 'Marketing', 45000, 'Lagos Street Abuja', 'Marketing Manager', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Njoku caleb', 35, 'male','finance', 60000, 'kanoroad lagos', 'finance analyst', 'Nigeria');
INSERT INTO employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
VALUES ('peace Tamuno', 30, 'female', 'Human Resources', 50000, 'Ibadan Avenue, Port Harcourt', 'HR Manager', 'Nigeria');



select * from employees_data;
insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('john Oguruche', 40, 'male', 'IT',70000, 'Kaduna lane Abuja', 'Senior Software Engineer', 'Nigeria');
insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Ebere Osoluka', 25, 'female', 'Sales', 40000,'567 Enugu close Lagos', 'Sales representative', 'Nigeria');
insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Amazu Ogueri', 32, 'Female', 'Customer Service', 48000, '879 ibadan street abuja', 'customer service supervisor', 'Nigeria');

INSERT INTO employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
VALUES ('Ozioma Stephanie', 27, 'female', 'operations', 42000, '345 Owerri Road, Port Harcourt', 'Operations Coordinator', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Emmanuel Onuoha', 34, 'male', 'Engineering', 65000, '123 Katsina Avenue, Lagos', 'Mechanical Engineer','Nigeria');
insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Amarachi Okafor', 29, 'female', ' Marketing', 46000, '456 Abuja Street Enugu','Marketing Specialist', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Andy Niceman', 38, 'male', 'Finance', 55000,'678 Kaduna Close, Lagos','Finance Manager', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Amina Yusuf', 31, 'female', 'Human Resources', 49000, '234 Lagos Avenue, Kano', 'HR Specialist', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ( 'Timothy Ihiabe', 33, 'male', 'IT', 68000, '567 Abuja Road, Port Harcourt', 'Systems Administrator', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Uchechi Nnamdi', 26,'female', 38000,'789 Kano Close, Lagos', 'sales Associate', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values(' Ayoade Olawale', 29, 'male', 'customer service', 44000, '123 Port Harcourt Street Abuja', 'Customer Service Representative', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ( ' Chika Okafor', 24, 'female', 'operations', 41000, '456 Enugu Avenue Lagos','operations Assistant', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values (' Ahmed Ibrahim', 37, 'male', 'Engineering', 63000, '678 Katsina Close Abuja', 'Electrical Engineer', 'Nigeria');
insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Ngozi Obi', 28, 'Female','Marketing',  47000, '234 Ibadan Road Port Harcourt', 'Marketing coordinator', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Emka Onyeka', 36, 'Male', 'Finance', 59000, ' 567 Lagos Close, Kano', 'financial planner', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Blessing Okonkwo', 27, 'Female', 'Human Resources', 45000, '789 Kaduna Street, Lagos', 'HR Assistant', 'Nigeria');

insert into employees_data (Name, Age, Gender, Department, Salary, Address, Position, Country)
values ('Olumide Adeyemi', 32, 'male', 'IT', 67000, '123 Abuja Close, Enugu', 'software developer', 'Nigeria');
select * from employees_data;

delete from employees_data
where name = 'Kerry Kwem Ulaka';

SELECT gender, address, SUM(salary) AS total_salary
FROM employees_data
WHERE gender = 'female' AND salary < 45000 AND address LIKE '%Lagos%'
GROUP BY gender, address
ORDER BY total_salary;

select gender, country, sum(salary) as Total_salary
from employees_data
where gender = 'male' and salary >45000
group by gender, country
order by Total_salary;

SELECT AVG(salary) AS average_salary
FROM employees_data;
select round(AVG(salary)) as average_salary
from employees_data;

ALTER TABLE employees_data
ADD COLUMN AverageSalary DECIMAL(10, 2);

UPDATE employees_data
SET AverageSalary = SELECT AVG(salary);

 UPDATE employees_data
 set averageSalary = select round(AVG(salary)) as average_salary
from employees_data;
UPDATE employees_data AS e1
JOIN (
    SELECT ROUND(AVG(salary)) AS average_salary
    FROM employees_data
) AS e2
SET e1.averageSalary = e2.average_salary;

select * from employees_data;
-- FROM THE AVG SALARY AND SALARY GET THE TOTAL SALARY AND ADD IT TO THE TABLE -- 
SELECT ROUND(AVG(salary)) AS average_salary, COUNT(*) AS number_of_employees, ROUND(AVG(salary) * COUNT(*)) AS total_salary
FROM employees_data;

ALTER TABLE employees_data
ADD COLUMN TotalSalary DECIMAL(10, 2) after salary;

UPDATE employees_data
SET TotalSalary = (SELECT ROUND(AVG(salary) * COUNT(*)) FROM employees_data);


UPDATE employees_data
 set Totalsalary  = SELECT ROUND(AVG(salary)) AS average_salary, COUNT(*) AS number_of_employees, ROUND(AVG(salary) * COUNT(*)) AS total_salary
from employees_data;
UPDATE employees_data AS e1
JOIN (
    SELECT ROUND(AVG(salary)) AS Totalsalary
    FROM employees_data
) AS e2
SET e1.Totalsalary = e2.totalsalary;
select * from employees_data;

-- WHO IS THE HIGHEST PAID IT EMPLOYEE , HOW MUCH , AND WHERE DOES THE STAFF RESIDE?-- 
SELECT Name AS HighestPaidEmployee,
       Salary AS MaximumSalary,
       Address AS Residence
FROM employees_data
WHERE Department = 'IT'
ORDER BY Salary DESC
LIMIT 1;
