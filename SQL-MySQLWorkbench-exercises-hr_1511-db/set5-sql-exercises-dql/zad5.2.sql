SELECT c.country_name, r.region_name, c.region_id
FROM countries as c left join regions as r
ON c.REGION_ID=r.REGION_ID  
order by c.COUNTRY_NAME;

/* dla full joina - np gdybyśmy chciali sprawdzić czy któreś z pól w countries lub regions jest nullem. 
Trzeba usunąć "order by" i dodać poniższy fragment.
UNION
SELECT c.country_name, r.region_name, c.region_id
FROM countries as c right join regions as r
ON c.REGION_ID=r.REGION_ID
*/