-- 3.	Write a SQL query which produces a table containing the title and month of each article. 

select
	title,
	monthname(str_to_date(publish_date, '%m/%d/%y')) as Month
from
	news n
order by
	str_to_date(publish_date,'%m/%d/%y') asc
