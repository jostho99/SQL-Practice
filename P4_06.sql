-- 6.	Write a SQL query which produces a table containing the average news_guard_score for the data set.

select
	format(avg(news_guard_score), 3) as "Average Score"
from
	news n
