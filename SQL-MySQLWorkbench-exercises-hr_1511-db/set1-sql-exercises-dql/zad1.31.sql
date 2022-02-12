SELECT last_name as nazwisko, hire_date as data_zatrudnienia, salary as obecna_pensja, salary + 2000 as pensja_po_podwyżce
from employees
order by nazwisko;