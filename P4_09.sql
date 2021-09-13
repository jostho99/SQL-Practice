-- 9.	Write a SQL query which produces a table containing unique countries and their average news_guard_score.
select country, round(avg(news_guard_score), 3) as avg_news_score
from news n
inner join country_table ct on n.country_id = ct.country_id
group by country
order by avg(news_guard_score) desc
