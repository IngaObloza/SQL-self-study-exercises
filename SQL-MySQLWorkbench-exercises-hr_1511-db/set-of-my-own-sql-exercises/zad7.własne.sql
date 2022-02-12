-- zad 7 własne 
-- Wyświetl imiona, nazwiska, pensje oraz 
-- dodatkowe kolumny: 
-- kolumna: czy pensja powyżej średniej w firmie, alias - powyżej_średniej, wartości: 'tak', 'nie', 'równa'.
-- kolumna: tylko inicjał imienia i nazwisko oddzielone kropką, alias - SKRÓT. 
 SELECT first_name, last_name, SALARY, CONCAT(LEFT(FIRST_NAME,1), ".", LAST_NAME) AS SKRÓT,
 CASE 
 WHEN SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'TAK'
 WHEN SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'NIE'
 ELSE 'RÓWNA' 
 END AS POWYŻEJ_ŚREDNIEJ
 FROM employees  
 WHERE SALARY IS NOT NULL
 ORDER BY SALARY;
 
 
