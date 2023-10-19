SELECT * FROM staff_trim.`staff trim exercise table (1)`;
rename table staff_trim.`staff trim exercise table (1)` to staff;
select * from staff;

select Geography,sum(amount) as sales
from staff
group by Geography
order by sales desc;

-- Find rows with missing values
SELECT *
FROM your_table
WHERE column1 IS NULL;

-- Replace missing values with a default value
UPDATE staff
SET geography = 'Geography'
WHERE Geography IS NULL;

-- remove symbol
update staff
set amount = replace(amount,'$', '');

select product, sum(amount) as sales
from staff
group by product
order by sales desc;
