SHOW DATABASES;
USE `steele-mysql`;

SHOW TABLES;

DESC books;

SELECT * FROM books ORDER BY pages DESC;

SELECT DISTINCT COUNT(title) FROM books;

SELECT MAX(released_year) FROM books;
SELECT * FROM books WHERE released_year = (SELECT MIN(released_year) FROM books);

SELECT released_year, COUNT(title) AS counting
FROM books GROUP BY released_year
ORDER BY counting DESC;

SELECT * FROM books WHERE released_year =  2004;

SELECT SUM(stock_quantity) FROM books;
