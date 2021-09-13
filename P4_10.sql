-- 10.	Write a SQL query linking each author to their probable political bias, based on the articles they’ve written.  
-- The table should contain three columns, the author name, the political bias, and the count of how many articles that author has published with that bias.  
-- Order the results alphabetically by author name, from greatest number of articles to least, and alphabetically by bias in the case of a tie.

select
	author,
	political_bias,
	count(n.news_id) as numArticles
from
	author_table at2
inner join news_authors na on
	at2.author_id = na.author_id
inner join news n on
	na.news_id = n.news_id
inner join political_bias_table pbt on
	pbt.political_bias_id = n.political_bias_id
group by
	author,
	political_bias
order by
	author,
	numArticles desc,
	political_bias asc
