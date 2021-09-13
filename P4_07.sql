-- 7.	Write a SQL query which produces a table containing for each month, 
-- the name of the month, the number of articles released in that month, 
-- the overall number of articles released, and the percentage of the overall number of articles released in that month.  
select
	monthname(str_to_date(publish_date, '%m/%d/%y')) as "month",
	count(news_id) as numArticles ,
	t.cnt as overall ,
	format((count(1) / t.cnt) * 100, 3) as percentage
from
	news n
cross join (
	select
		COUNT(1) as cnt
	from
		news n2) t
group by
	monthname(str_to_date(publish_date, '%m/%d/%y')) ,
	t.cnt
order by month(str_to_date(publish_date, '%m/%d/%y'))