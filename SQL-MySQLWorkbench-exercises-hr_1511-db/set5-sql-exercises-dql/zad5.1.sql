SELECT e.first_name, e.last_name, d.department_name, e.department_id
FROM employees as e left join departments as d
ON e.DEPARTMENT_ID=d.DEPARTMENT_ID;
 