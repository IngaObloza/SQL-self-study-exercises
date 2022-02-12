SELECT *
from employees
where DEPARTMENT_ID in (50,60,100); 

-- 2 rozwiązanie, wstawić po from 
-- where DEPARTMENT_ID = 50 or DEPARTMENT_ID = 60 or DEPARTMENT_ID=100;
