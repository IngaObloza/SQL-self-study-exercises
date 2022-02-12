-- zad 9 własne:
-- wyświetl ile osób zarabia poniżej, a ile powyżej średniej zarobków w firmie. 
-- 1 kolumna: wynik, zawierająca ilość osób i informacje czy pensje powyżej średniej. 
SELECT concat('liczba osób: ',COUNT(SALARY), ' powyżej średniej? ',
CASE
 WHEN SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'TAK'
 WHEN SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'NIE'
 ELSE 'RÓWNA' 
 END ) as wynik
FROM EMPLOYEES 
GROUP BY  -- wynik
 CASE 
 WHEN SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'TAK'
 WHEN SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES) THEN 'NIE'
 ELSE 'RÓWNA' 
 END;