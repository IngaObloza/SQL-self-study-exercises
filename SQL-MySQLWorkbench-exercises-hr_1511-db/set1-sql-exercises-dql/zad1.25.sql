SELECT first_name, last_name, salary as obecna_pensja, salary*1.2 as podwyżka_20proc
from employees
where DEPARTMENT_ID = 50
order by obecna_pensja;


