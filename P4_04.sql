-- 4.	Write a SQL query which produces a table of unique publisher names that have news articles in the data set.

 select
	publisher
from
	publisher_table pt
inner join news n on
	pt.publisher_id = n.publisher_id
group by
	publisher
order by
	publisher