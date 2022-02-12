SELECT d.department_name, c.country_name, l.city, l.POSTAL_CODE, l.STREET_ADDRESS, d.LOCATION_ID, l.COUNTRY_ID
FROM departments as d left join locations as l 
on d.location_id=l.location_id 
left join countries as c 
on l.COUNTRY_ID=c.COUNTRY_ID
order by DEPARTMENT_NAME;