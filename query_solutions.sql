SELECT Count(*) 
	FROM title_basics
	WHERE runtime_minutes > 180;
	
	
SELECT Count(*) 
	FROM title_basics
	WHERE start_year > 2010;
	
	
SELECT tconst
	FROM title_basics
	WHERE primary_title = 'The Dark Knight' AND title_type = 'movie';
	
	
SELECT Count(*)
	FROM title_basics
	WHERE start_year > 2000 AND genres LIKE '%Comedy%' AND genres LIKE '%Horror%';
	
	
SELECT DISTINCT title_type
	FROM title_basics;
	
	
SELECT 
	title_type,
	COUNT (title_type)
FROM
	title_basics
GROUP BY
	title_type;
	
	
SELECT Count(*)
	FROM title_basics
	WHERE primary_title <> original_title;
	
	
SELECT
	primary_title,
	length(primary_title)
FROM
	title_basics
ORDER BY
	length DESC;
	
	
SELECT
	genres,
	start_year,
	runtime_minutes
FROM
	title_basics
WHERE
	(genres LIKE '%Documentary%' AND start_year BETWEEN 1799 AND 1899)
	AND (runtime_minutes < 60 AND runtime_minutes IS NOT NULL)
	OR (genres LIKE '%Comedy%' AND start_year = 2018)
	AND (runtime_minutes < 60 AND runtime_minutes IS NOT NULL);


SELECT tconst, primary_title
FROM title_basics
WHERE tconst = 'tt3467114';