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
