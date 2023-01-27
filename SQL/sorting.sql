-- ORDER BY clause is used to sort the result-set in ascending or descending order (ascending is the default).
SELECT title, release_year
    FROM films
    ORDER BY release_year;

-- ORDER BY clause can be used to sort the result-set in ascending or descending order.
SELECT title, release_year
    FROM films
    ORDER BY release_year DESC;

-- Written code
SELECT item
FROM table
WHERE condition
ORDER BY item
LIMIT 10;

-- Sorting multiple fields
SELECT title, release_year
    FROM films
    ORDER BY release_year DESC, title;

-- GROUP BY clause is used to group the result-set by one or more columns.
SELECT release_year, COUNT(*) AS number_of_films
    FROM films
    GROUP BY release_year;

-- You can also group by multiple columns
SELECT release_year, language, COUNT(*) AS number_of_films
    FROM films
    GROUP BY release_year, language;

