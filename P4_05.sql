-- 5.	Write a SQL query which which produces a table containing the 
-- name of each country and the count of how many articles are in the dataset from each country.
select
	country,
	count(n.country_id) as articleCount
from
	country_table ct
left join news n on
	ct.country_id = n.country_id
group by
	country
order by
	articleCount desc

