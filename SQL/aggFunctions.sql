-- We known five different functions: AVG, COUNT, MAX, MIN, SUM

-- Functions for numerical values only are: AVG, SUM
-- Functions for various values only are: COUNT, MAX, MIN

SELECT SUM(duration) AS total_duration
  FROM films;

SELECT AVG(duration) AS average_duration
    FROM films;

SELECT MAX(release_year) AS latest_release_year
    FROM films;

SELECT MIN(release_year) AS earliest_release_year
    FROM films;

-- Summarizing subsets
-- Using ROUND() to round the average duration to the nearest whole number
SELECT ROUND(AVG(duration), 2) AS average_duration --The second parameter indicates the number of decimal places to round to
    FROM films;

-- Ej.Calculate the average budget rounded to the thousands (using a negative number for the second parameter)
SELECT ROUND(AVG(budget), -3) AS average_budget
    FROM films;