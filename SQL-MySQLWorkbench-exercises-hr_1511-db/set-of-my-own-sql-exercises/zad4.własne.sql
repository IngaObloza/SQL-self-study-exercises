-- zad 4 własne:
-- wskaż średnią zarobków w danym kraju (niezależnie od stanowiska) osób, których pensja przekracza ogólną średnią pensję w firmie. 
-- Wyświetl średnią pensji wskazanych osób, nazwę kraju, liczbę osób wziętą do grupy z danego kraju.      
-- sortuj od najniższej do najwyższej średniej pensji. 
select avg(e.salary) as średnia_pensja, c.country_name, count(*) as liczba_osób 
from employees as e left join jobs as j on e.JOB_ID=j.JOB_ID
left join departments as d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
left join locations as l on d.LOCATION_ID=l.LOCATION_ID
left join countries as c on l.COUNTRY_ID=c.COUNTRY_ID
where salary > (select avg(salary) from employees as e ) 
group by c.COUNTRY_NAME
order by średnia_pensja;

-- zadania do ogarnięcia --> praca z null (w wyniku pojawi się Kimberely Grant, która nie ma DEPARTMENT_ID, przez co nie można jej też powiązać z konkretnym krajem. 