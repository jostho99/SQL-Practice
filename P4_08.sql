-- 8.	Write a SQL query which produces a table containing the publisher names, 
-- and the percentage of articles for which are marked as reliable (1) among the articles published by that publisher.
select publisher, percentage
from publisher_table pt
inner join (
select publisher_id, format(sum(case when reliability = 1 then 1 else 0 end) / count(1) * 100, 3) AS percentage
from news n
group by publisher_id) p on p.publisher_id = pt.publisher_id
order by percentage+0 desc, publisher asc