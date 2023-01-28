-- Filtering with LIKE and NOT LIKE

--Select names that start with "B"
SELECT name
  FROM table_name
  WHERE name LIKE 'B%';

--Select names that have an "r" in the second position
SELECT name
  FROM table_name
  WHERE name LIKE '_r%';

--Select names that dont start with an "A"
SELECT name
  FROM table_name
  WHERE name NOT LIKE 'A%';

-- WHERE IN
-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT title, certification, language
  FROM films
  WHERE certification IN ('NC-17', 'R')
  AND language IN ('English', 'Italian', 'Greek');


-- So far our SQL vocabulary includes COUNT(), DISTINCT, LIMIT, WHERE, OR, AND, BETWEEN, LIKE, NOT LIKE, and IN.

-- NULL values are a special value that indicates that a value is missing or unknown.
SELECT title AS no_budget_title
  FROM films
  WHERE budget IS NULL;

SELECT title AS no_language
FROM films
WHERE language IS NOT NULL;

-- HAVING It works similarly to WHERE in that it is a filtering clause, with the difference that HAVING filters grouped data.
-- Find the number of films released in each year
SELECT release_year, COUNT(duration) AS num_films
  FROM films
  GROUP BY release_year
  HAVING COUNT(duration) > 120;