-- zad 25 zest 2 przerobione: 
-- wyświetl realne maksymalne i minimalne pensje dla poszczególnych stanowisk + nazwy stanowisk  
-- porównaj realne max i min z zestawieniem max i min z tabeli jobs. 
-- wyświetl liczbę pracowników dla poszczególnych stanowisk 
select min(e.salary) pensja_min_realnie, max(e.salary) as pensja_max_realnie, e.job_id, j.job_title, j.min_salary, j.max_salary, count(*) as liczba_pracowników
from employees as e left join jobs as j using (job_id)
group by e.JOB_ID 
order by j.job_title