-- zad 2 własne: Wyświetl imię, nazwisko, nazwę oddziału, miasto i kraj osób pracujących w Niemczech.

select e.last_name, e.first_name, d.department_name, l.city, c.country_name 
from employees as e left join departments as d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
left join locations as l on d.LOCATION_ID=l.LOCATION_ID
left join countries as c on l.COUNTRY_ID=c.COUNTRY_ID 
where c.COUNTRY_NAME = 'Germany';