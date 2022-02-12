SELECT *
from employees
where salary >= 6000 and salary <= 8000  
order by salary;

-- drugie rozwiązanie, wstaw po from
-- where salary between 6000 and 8000
-- order by salary;