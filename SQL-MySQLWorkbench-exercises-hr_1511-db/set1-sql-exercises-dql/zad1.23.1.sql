-- dodatkowe zest 1 zad 23
-- wyświetl bez duplikatów identyfikatory oddziałów z tabeli employees oraz 
-- wyświetl nazwy tych oddziałów
SELECT distinct e.department_id, d.department_name
from employees as e left join departments as d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

