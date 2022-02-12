SELECT e.first_name, e.last_name, j.job_title, e.JOB_ID
FROM employees AS e left join jobs AS j 
ON e.JOB_ID=j.JOB_ID;
