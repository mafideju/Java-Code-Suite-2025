CREATE VIEW final_call AS
SELECT
    student_name,
    IFNULL(FORMAT(AVG(p.grade), 2), 0) average,
    IF(AVG(p.grade) > 70, 'PASSING', 'FAILING') passing_status
FROM students
         LEFT JOIN papers p on students.student_id = p.student_id
GROUP BY student_name
ORDER BY average DESC;

CREATE OR REPLACE VIEW full_reviews AS
SELECT
    title, released_year, genre, rating, first_name, last_name
FROM reviews
    JOIN series ON series.series_id = reviews.series_id
    JOIN reviewers ON reviewers.reviewer_id = reviews.reviewer_id;


SELECT * FROM full_reviews;
SELECT * FROM final_call;

-- REPLACE || ALTER VIEWS ------------------------------------------------------------------------------
CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;

ALTER VIEW ordered_series AS
    SELECT * FROM series ORDER BY released_year;

DROP VIEW ordered_series;

-- HAVING ------------------------------------------------------------------------------
SELECT
    title,
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews
GROUP BY title HAVING COUNT(rating) > 1;

-- WITH ROLLUP ------------------------------------------------------------------------------
SELECT
    title, AVG(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;

SELECT
    title, COUNT(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;

SELECT
    first_name, released_year, genre, AVG(rating)
FROM
    full_reviews
GROUP BY released_year , genre , first_name WITH ROLLUP;

-- MODES ------------------------------------------------------------------------------
-- To View Modes:
SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;

-- To Set Them:
SET GLOBAL sql_mode = 'modes';
SET SESSION sql_mode = 'modes';