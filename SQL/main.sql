PosgreSQL
-- Basic queries

-- 1. Select all columns from the table
SELECT * 
  FROM table_name;

-- 2. Select only the name column
SELECT name
  FROM table_name;

-- Use DISTINCT to only return unique values
SELECT DISTINCT name
           FROM table_name;

-- Adding an alias to a column
SELECT DISTINCT name AS "Name"
           FROM table_name;

-- Create a view of the query results
    CREATE VIEW view_name AS 
SELECT DISTINCT name AS "Name"
           FROM table_name;

-- Limit the number of rows returned
SELECT DISTINCT name AS "Name"
           FROM table_name
           LIMIT 5;

--INTERMEDIATE QUERIES

-- Use COUNT to count the number of rows (number of records/rows in a field/column)
SELECT COUNT(name)
  FROM table_name;
-- Get all values
SELECT COUNT(*)
  FROM table_name;

-- Using DISTINCT along with count to get the number of unique values
SELECT COUNT(DISTINCT name) AS distinct_names
  FROM table_name;

