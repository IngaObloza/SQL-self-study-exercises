-- dodatkowo zest 2 zad 19 
-- wyświetl informacje z tabeli locations
SELECT *
from departments as d left join locations as l 
on d.LOCATION_ID=l.LOCATION_ID
where d.LOCATION_ID != 1700; 