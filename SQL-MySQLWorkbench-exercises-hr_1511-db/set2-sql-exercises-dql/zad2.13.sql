SELECT *
from employees
where DEPARTMENT_ID in(70,80,110)
and salary not between 5000 and 9000
order by salary; 
