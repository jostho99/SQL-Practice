-- 1.	Write a SQL query which, given a news id stored in the variable @nid, generates a table containing the title of the article with that id.
SELECT title
FROM news
WHERE title = @nid