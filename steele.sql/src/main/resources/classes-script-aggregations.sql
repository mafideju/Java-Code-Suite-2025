SHOW DATABASES;
-- docker start steele-mysql
USE `steele-mysql`;

SHOW TABLES;

DESC books;

SELECT * FROM books ORDER BY pages DESC;
SELECT title FROM books WHERE title LIKE '%ava%';

SELECT DISTINCT COUNT(title) FROM books;
SELECT COUNT(DISTINCT title) FROM books;

SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year
ORDER BY released_year;

SELECT CONCAT(author_fname, ' ', author_lname) AS name, COUNT(*) AS count
FROM books
GROUP BY name
ORDER BY name;

SELECT author_lname, COUNT(*) AS books_written
FROM books
GROUP BY author_lname
ORDER BY books_written DESC;

SELECT MAX(released_year) FROM books;
SELECT MIN(released_year) FROM books;

SELECT title, released_year FROM books WHERE released_year = (SELECT MAX(released_year) FROM books);
SELECT title, released_year FROM books WHERE released_year = (SELECT MIN(released_year) FROM books);


SELECT * FROM books WHERE released_year = (SELECT MIN(released_year) FROM books);
SELECT * FROM books WHERE pages = (SELECT MIN(pages) FROM books);
SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT
    CONCAT(author_fname, ' ', author_lname) AS Autor,
    COUNT(*) AS Contagem,
    MIN(released_year),
    MAX(released_year)
FROM books
GROUP BY Autor
ORDER BY Contagem DESC;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS Autor,
    SUM(stock_quantity) AS Soma
FROM books
GROUP BY Autor
ORDER BY Soma;

SELECT * FROM books WHERE released_year =  2004;
SELECT SUM(stock_quantity) FROM books;
SELECT AVG(pages) FROM books;
SELECT AVG(released_year) FROM books;

SELECT released_year, COUNT(title) AS counting
FROM books GROUP BY released_year
ORDER BY counting DESC;

-- exercicios
SELECT COUNT(*) FROM books;

SELECT
    released_year,
    COUNT(released_year)
FROM books
GROUP BY released_year
ORDER BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS Autor,
    COUNT(*) AS Contagem,
    AVG(released_year)
FROM books
GROUP BY Autor
ORDER BY Contagem DESC;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS Autor,
    title,
    pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT
    released_year AS year,
    COUNT(released_year) AS '# books',
    AVG(pages) AS average
FROM books
GROUP BY released_year
ORDER BY released_year;

