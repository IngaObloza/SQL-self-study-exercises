SELECT first_name, last_name, salary as pensja_obecna, salary*1.2 as pensja_podwyżka_20proc, department_id
from employees
where department_id in(50,60,80)
order by LAST_NAME;
 

 