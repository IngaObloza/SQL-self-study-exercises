-- zad 8 własne:
-- wyświetl ile osób zarabia poniżej, a ile powyżej średniej zarobków w firmie. 
-- 2 kolumny: liczba_osób + pensja_powyżej_średniej - tak lub nie.
SELECT COUNT(SALARY) AS liczba_osób,
CASE
 WHEN SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'TAK'
 WHEN SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'NIE'
 ELSE 'RÓWNA' 
 END AS pensja_powyżej_średniej
FROM EMPLOYEES 
GROUP BY  -- pensja_powyżej_średniej
 CASE 
 WHEN SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'TAK'
 WHEN SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'NIE'
 ELSE 'RÓWNA' 
 END;