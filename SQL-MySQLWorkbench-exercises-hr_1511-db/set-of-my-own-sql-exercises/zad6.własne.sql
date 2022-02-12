-- Zad 6 własne:   
-- Wyświetl oddziały, w których minimalna pensja wynosi obecnie więcej niż średnia pensja w firmie.
-- wskaż minimalną, maksymalną i średnią pensję w tych oddziałach, nazwy oddziałów oraz
-- liczbę osób w danym oddziale. 

SELECT min(e.salary) as pensja_min, max(e.salary) as pensja_max, avg(e.salary) as średnia_pensja, 
d.department_name, count(*) as liczba_osób
from employees as e left join departments as d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
group by d.DEPARTMENT_NAME
having min(e.salary) > (select avg(e.salary) from employees as e) 
order by min(e.salary)

-- zadanie -- > obsługa Null / Kimberely Grant nie ma przypisanego department_id, a więc i department_name. 
 