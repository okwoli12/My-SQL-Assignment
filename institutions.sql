create database Institution;

use institution;
show tables;

create table Students_Data (
id int primary key auto_increment,
name varchar(50) not null,
age int,
score int,
grade char(2),
course varchar(50),
department varchar(50),
gender varchar (1),
email varchar (215)
);

describe students_Data;
select * from students_Data;
drop table students_Data;

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 1, "John Smith" , 18, 92, "A", "Mathematics", "Science", "M", "john.smith@example.com" );

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values (2,"Emily Johnson" , 17, 65, "B", "English Literature", "Humanities", "F", "emily.johnson@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 3, "Chisom Davis" , 19, 39, "F9", "Mathematics", "Science", "M", "chisom.davis@example.com");


insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 4, "Ibioku Thompson" , 16, 50, "C6", "Physics", "Science", "M", "ibioku.thompson@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 5, "Uzor Gladys" , 16, 65, "B", "Biology", "Science", "F", "uzor.gladys@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 6, "Ibioku Thompson" , 16, 50, "C6", "Physics", "Science", "M", "ibioku.thompson@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 7, "Ethan Anderson" , 31, 73, "B", "Geography", "Humanities", "M", "ethan.anderson@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 8, "Shola Oladipupo" , 43, 66, "C", "Computer Science", "Science", "M", "shola.oladipupo@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 9, "Okara Chima" , 49, 69, "B", "Economics", "Social Sciences", "M", "okara.chima@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 10, "Imani Wariboko" , 51, 78, "B", "Arts", "Fine Arts", "F", "imani.wariboko@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 11, "Ewache Godswill" , 35, 82, "B", "Music", "Fine Arts", "F", "ewache.godswill@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 12, "Olali Samuel" , 36, 93, "A", "Mechanical Enginerring", "Engineering", "M", "olali.samuel@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 13, "Otobong Udeme" , 38, 56, "C3", "Psychology", "Social Science", "F", "otobong.udeme@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 14, "Wilson Uduak" , 42, 92, "A", "Spanish", "Foreign Langauge", "F", "wilson.uduakn@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 15, "Amaka Uzor" , 33, 94, "A", "Accounting", "Social science", "F", "amaka.uzor@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 16, "Selman Lalong" , 50, 87, "A", "Political Science", "Social Science", "M", "selman.lalong@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 17, "Abubaka Umaru" , 21, 51, "D", "Linguistics", "Foreign Langauge", "F", "abubaka.umaru@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 18, "Tiwa Folashade" , 36, 49, "E", "Accounting", "social Sciences", "F", "tiwa.folashade@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 19, "Ukara Obot" , 28, 77, "B", "Computer Science", "Social Science", "F", "ukara.obot@example.com");

insert into students_Data (id, name, age, score, grade, course, department, gender, email)
values ( 20, "Muhammadu Tahiru" , 86, 50, "D", "Lingusitics", "Foreign Langauge", "M", "muhammadu.tahiru@example.com");

insert into students_Data (name, age, score, grade, course, department, gender, email)
values ( null , 30, 52, "C3", "Physics", "Science", "M", "emmanuel.onuoha@example.com");

alter table students_data
add BONUS_MARK  int after score;

alter table students_data
add Average_score int after total_score;

delete from students_data;

select * from Students_Data;



set SQL_SAFE_UPDATES=0;
start transaction;

update students_data
set score=case
when grade = 'A' then 80
when grade = 'B' then 70
when grade = 'C6' then 50
when grade = 'D' then 45
when grade = 'E' then 39
when grade = 'F9' then 35
when grade = 'C' then 45
when grade = 'c3' then 51
else grade 
End;

UPDATE students_data 
SET BONUS_MARK = CASE GRADE
WHEN 'A' THEN 5
WHEN 'B' THEN 5
WHEN 'C' THEN 5
WHEN 'D' THEN 5
WHEN 'E' THEN 5
WHEN 'F' THEN 5
WHEN 'F9' THEN 5
WHEN 'C6' THEN 5
WHEN  'C3' THEN 5
END;

UPDATE students
SET BONUS_MARK = CASE GRADE
WHEN 'A' THEN 5
WHEN 'B' THEN 10
WHEN 'C' THEN 15
WHEN 'D' THEN 20
WHEN 'E' THEN 25
WHEN 'F' THEN 30
END;
select * from students_data;

update students_data
set total_score = (score+BONUS_MARK);

UPDATE students
SET BONUS_MARK = CASE GRADE
WHEN 'A' THEN 5
WHEN 'B' THEN 5
WHEN 'C' THEN 5
WHEN 'D' THEN 5
WHEN 'E' THEN 5
WHEN 'F' THEN 5
WHEN 'F9' THEN 5
WHEN 'C6' THEN 5
WHEN  'C4' THEN 5
END;


/numeric functions/

select avg(score) from students;

select round(avg(score)) from students;

update students_data
set average_score = (score)/2;

/* used to find customers whose name starts with i* or no character or 10 characters*/

select * 
from students where name like '%c%';

select * 
from students where department like '%z%';

select * 
from students where name like '%x';

select * 
from students where name like 'c%';

select * 
from students where name like '%in%';

select sum(score) from students; 


use mysl2;

set SQL_SAFE_UPDATES=0;
start transaction;

 alter table students
 add column Average_score int after score;
 
 select * from students;
 
 ALTER TABLE STUDENTS
ADD COLUMN TOTAL_SCORE INT AFTER BONUS_MARK;

UPDATE STUDENTS
SET TOTAL_SCORE = (SCORE + 5);
 

 
 update students
set bonus_mark = (score +5);

alter table students_data
add column ranking char after average_score;

set SQL_SAFE_UPDATES=1;
select age, sum(score) as sco
from students_data
group by age
order by sco desc;

update students_data
set ranking =case
when grade = 'A' then 'first class'
when grade = 'B' then 'second class'
when grade = 'C' then 'third class'
when grade = 'C3' then 'third class'
when grade = 'C6' then 'third class'
when grade = 'D' then 'pass'
when grade = 'E' then 'pass'
when grade = 'F9' then 'fail'
else ranking
end;

selevt avg(total_score)) from students_data;

select
