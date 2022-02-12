-- dodatkowo do zest 1 zad 27. 
-- Wyświetl dane oddziałów o identyfikatorze lokalizacji większym od 1500
-- weż pod uwagę tabele: departments i locations   
SELECT *
from departments as d left join locations as loc
on d.LOCATION_ID=loc.LOCATION_ID
where d.LOCATION_ID > 1500;


