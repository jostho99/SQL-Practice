-- 2.	Write a SQL query which produces the news id and length of articles, but only for articles with a length greater than 1000 characters.

select
	news_id,
	CHAR_LENGTH(body_text) as length
from
	news n
where
	CHAR_LENGTH(body_text) > 100
order by
	news_id 

