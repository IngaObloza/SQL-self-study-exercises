-- zad 16 zest 2 przerobione: 
-- wyświetl ilu pracowników ma to samo imię + imiona
select first_name, count(first_name) 
from employees
group by FIRST_NAME
order by count(first_name)