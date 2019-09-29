1) Clone this repository
2) Unzip titles.sql.zip
3) Create a new database called "imdb"
4) In your terminal, run `psql -d imdb < titles.sql`
5) Your imdb db should now have a table with 5 million rows of movie data!

- How many movies are longer than 3 hours long?
12,677

- How many movies came out after the year 2010?
2,168,478

- What's the imdb ID for "The Dark Knight"
tt0468569

- How many movies that came out after 2000 are both Comedies and Horrors? https://www.w3schools.com/sql/sql_wildcards.asp might help for this query
13,324

- What are the different kinds of title_types in this table? https://www.dofactory.com/sql/select-distinct
tvShort, movie, tvMovie, short, tvMiniSeries, videoGame, tvEpisode, video, tvSpecial, tvSeries

- Of these title_types, which has the most records? The least records? http://www.postgresqltutorial.com/postgresql-count-function/
Most is TV Episode, least is TV Short

- How many entries have separate primary_titles and original_titles
91,394

- How many characters long is the longest title? https://w3resource.com/PostgreSQL/length-function.php
408

- How many titles are either documentaries from the 1800s or Comedies from 2018 that are less than one hour long?
14,214

- My favorite title is tt3467114 . Which title is it?
Halo 5: Gaurdians