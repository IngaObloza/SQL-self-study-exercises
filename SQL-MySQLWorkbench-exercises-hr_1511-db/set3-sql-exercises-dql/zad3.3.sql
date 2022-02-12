select distinct count(distinct first_name) as imiona_na_A
from employees
where FIRST_NAME like 'A%';


-- dla sprawdzenia poprawności wyniku: 
-- select distinct first_name 
-- from employees
-- where first_name like 'A%' 
-- order by first_name
-- 10 imion 
-- 2 * Alexander 
-- 9 niepowtórzonych imion