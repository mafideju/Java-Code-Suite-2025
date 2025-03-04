SHOW DATABASES;
USE `steele-mysql`;

SHOW TABLES;

-- NOT EQUAL || NOT LIKE || GREATER THAN || LESS THAN (!=, NOT LIKE, >, >=, <, <=)
SELECT * FROM books WHERE released_year != 2000;
SELECT * FROM books WHERE title NOT LIKE 'A%';
SELECT * FROM books WHERE title LIKE 'A%';
SELECT * FROM books WHERE released_year > 2005 ORDER BY released_year;
SELECT * FROM books WHERE pages > 500;
SELECT * FROM books WHERE released_year <= 1985;
SELECT * FROM books WHERE released_year <= 1985 AND pages > 500;

SELECT title, pages FROM books
WHERE CHAR_LENGTH(title) > 30
  AND pages > 500;

SELECT * FROM books WHERE released_year BETWEEN 1985 AND 1990;

SELECT * FROM facts WHERE birth_time BETWEEN CAST('12:00:00' AS TIME) AND CAST('16:00:00' AS TIME);
SELECT * FROM facts WHERE HOUR(birth_time) BETWEEN 12 AND 16;

SELECT * FROM books WHERE author_lname IN ('Castro', 'Medeiros');
SELECT * FROM books WHERE released_year NOT IN (SELECT released_year FROM books WHERE released_year BETWEEN 1985 AND 1990);
SELECT * FROM books WHERE released_year NOT IN (SELECT released_year FROM books WHERE released_year % 2 = 0);
SELECT * FROM books WHERE released_year % 2 = 0;

SELECT *,
CASE
    WHEN released_year > 2000 THEN 'Seculo 21 Modernos' ELSE 'Classicos'
END AS Periodo
FROM books;


SELECT CONCAT(SUBSTR(title, 1, 20),'...') AS Titulo,
       CONCAT(author_fname, ' ', author_lname) AS Nome,
       released_year, stock_quantity, pages,
       CASE
           WHEN stock_quantity BETWEEN 0 AND 10 THEN '*'
           WHEN stock_quantity BETWEEN 11 AND 30 THEN '***'
           WHEN stock_quantity BETWEEN 31 AND 60 THEN '*****'
           WHEN stock_quantity BETWEEN 61 AND 120 THEN '*******'
           ELSE '**********'
           END AS Estoque
FROM books
ORDER BY stock_quantity DESC;

SELECT SUBSTR(title, 1, 20) AS Titulo FROM books;

-- EXERCISES
-- 1
-- false, true, false

-- 2
SELECT *
FROM books
WHERE released_year < 1980;
-- 3
SELECT *
FROM books
WHERE author_lname = 'Eggers'
    OR author_lname = 'Chabon';
-- 4
SELECT *
FROM books
WHERE author_lname = 'Lahiri'
   AND released_year > 2000;
-- 5
SELECT *
FROM books
WHERE pages
BETWEEN 100 AND 200;
-- 6
SELECT *
FROM books
WHERE author_lname LIKE 'S%'
   OR author_lname LIKE 'C%';
-- 7
SELECT title, CONCAT(author_fname, ' ', author_lname) AS 'author name',
    CASE
        WHEN LOWER(title) LIKE '%stories%' THEN 'Short Stories'
        WHEN LOWER(title) LIKE '%kids%' OR LOWER(title) LIKE '%heartbreaking%' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

-- BONUS
SELECT author_fname, author_lname,
    CASE
       WHEN COUNT(title) = 1 THEN '1 book'
       WHEN COUNT(title) = 2 THEN '2 books'
       WHEN COUNT(title) = 3 THEN '3 books'
    END AS Count
FROM books
GROUP BY author_fname, author_lname;

SELECT *
FROM books
WHERE author_lname = 'Smith'