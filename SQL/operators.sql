-- Comparison operators
-- =, !=, <> (not equal to), <, >, <=, >=, BETWEEN, IN, LIKE, NOT LIKE, IS NULL, IS NOT NULL

-- Select all columns where the name is "John"
SELECT *
  FROM table_name
  WHERE name = 'John'; --Make sure to use single quotes for strings and double quotes for column names

-- Order of execution
-- 1. FROM
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT
-- 6. DISTINCT
-- 7. ORDER BY
-- 8. LIMIT

-- Multiple criteria/conditions

-- OR operator
SELECT *
  FROM table_name
  WHERE name = 'John' 
  OR name = 'Mary';

-- AND operator
SELECT *
  FROM table_name
  WHERE name = 'John' 
  AND age = 30;

-- BETWEEN, AND operator
SELECT *
  FROM table_name
  WHERE age 
  BETWEEN 20 AND 30;

-- Example: -- Select all records for German-language films released after 2000 and before 2010
SELECT *
  FROM films
  WHERE language = 'German' AND release_year 
  BETWEEN 2000 AND 2010;

-- A more complex example 
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
AND (language = 'English' OR language = 'Spanish')
AND gross > 2000000;

