SELECT e.first_name, e.last_name, d.department_name, e.JOB_ID 
FROM employees as e left join departments as d  
ON e.DEPARTMENT_ID=d.DEPARTMENT_ID
WHERE e.JOB_ID not like '%IT%';
