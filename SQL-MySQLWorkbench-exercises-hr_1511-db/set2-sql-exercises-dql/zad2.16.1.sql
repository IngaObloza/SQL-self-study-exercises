-- dodatkowo do zest 2 zad 16
-- wyświetl ile osoób ma to samo imię.  
SELECT FIRST_NAME, COUNT(FIRST_NAME)
from employees
GROUP BY FIRST_NAME
order by FIRST_NAME ASC;

