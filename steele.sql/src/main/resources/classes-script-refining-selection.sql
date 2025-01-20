
-- SECTION 8
-- REFINING SELECTIONS

SELECT * FROM books;

SELECT author_lname FROM books;
SELECT DISTINCT author_lname, author_fname FROM books;

SELECT * FROM books ORDER BY released_year;
SELECT * FROM books ORDER BY stock_quantity DESC;

SELECT * FROM books ORDER BY released_year LIMIT 10;
SELECT * FROM books LIMIT 2;

SELECT * FROM books WHERE author_fname LIKE '%ta%' ORDER BY released_year LIMIT 10;
SELECT * FROM books WHERE title LIKE '%:%' ORDER BY released_year LIMIT 10;
SELECT * FROM books
WHERE title
    LIKE 'A%' OR title LIKE 'B%' OR title LIKE 'C%' OR title LIKE 'D%'
ORDER BY released_year;
SELECT * FROM books WHERE title LIKE '__________' ORDER BY released_year LIMIT 10; -- retorna title com 10 caracteres (tem 10 _)

-- exercises
SELECT title FROM books WHERE title LIKE '%stories%';
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;
SELECT title, author_lname FROM books ORDER BY author_lname, title;
SELECT CONCAT(UPPER('MY FAVORITE AUTHOR IS '), UPPER(CONCAT(author_fname, ' ', author_lname))) AS yell FROM books ORDER BY author_lname;