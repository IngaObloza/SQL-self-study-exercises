SELECT *
from locations
where city not like'T%' and city not like 'B%' 
order by city;
 