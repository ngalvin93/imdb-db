1) Clone this repository
2) Unzip titles.sql.zip
3) Create a new database called "imdb"
4) In your terminal, run `psql -d imdb < titles.sql`
5) Your imdb db should now have a table with 5 million rows of movie data!

- How many movies are longer than 3 hours long?
SELECT Count(*) 
    FROM title_basics
    WHERE runtime_minutes > 180;

RESULT 12,677

- How many movies came out after the year 2010?
SELECT Count(*)
	FROM title_basics
	WHERE start_year > 2010;
RESULT 2,168,478

- What's the imdb ID for "The Dark Knight"
SELECT tconst
	FROM title_basics
	WHERE primary_title = 'The Dark Knight' AND title_type = 'movie';
RESULT tt0468569

- How many movies that came out after 2000 are both Comedies and Horrors? https://www.w3schools.com/sql/sql_wildcards.asp might help for this query
SELECT Count(*)
	FROM title_basics
	WHERE start_year > 2000 AND genres LIKE '%Comedy%' AND genres LIKE '%Horror%'; 
RESULT 13,324

- What are the different kinds of title_types in this table? https://www.dofactory.com/sql/select-distinct
SELECT DISTINCT title_type
	FROM title_basics;
RESULT
tvShort
movie
tvMovie
short
tvMiniSeries
videoGame
tvEpisode
video
tvSpecial
tvSeries

- Of these title_types, which has the most records? The least records? http://www.postgresqltutorial.com/postgresql-count-function/
SELECT 
	title_type,
	COUNT (title_type)
FROM
	title_basics
GROUP BY
	title_type;

RESULT
MOST: TV Episode
LEAST: TV Short

- How many entries have separate primary_titles and original_titles
SELECT Count(*)
	FROM title_basics
	WHERE primary_title <> original_title;

RESULT: 91,394

- How many characters long is the longest title? https://w3resource.com/PostgreSQL/length-function.php
SELECT primary_title, length(primary_title)
	FROM title_basics
    ORDER BY length DESC;

RESULT: 408

- How many titles are either documentaries from the 1800s or Comedies from 2018 that are less than one hour long?
skip

- My favorite title is tt3467114 . Which title is it?
SELECT tconst, primary_title
FROM title_basics
WHERE tconst = 'tt3467114';

RESULT: Halo 5: Gaurdians