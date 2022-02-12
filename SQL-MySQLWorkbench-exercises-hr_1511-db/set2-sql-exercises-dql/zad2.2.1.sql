-- dodatkowo do zest 2 zad 2 
-- wyświetl dodatkowo nazwę oddziału z tebeli departments
SELECT e.first_name, e.last_name, e.department_id, d.DEPARTMENT_NAME
from employees as e left join departments as d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
where e.DEPARTMENT_ID = 100;