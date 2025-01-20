-- ***********************CRUD************************************************ --

SHOW DATABASES;
USE `steele-mysql`;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS users (
                                     id INT AUTO_INCREMENT PRIMARY KEY,
                                     email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    username VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

INSERT INTO users (email, password, username) VALUES ('mafideju@outlook.com', '123', 'mafideju');
INSERT INTO users (email, password, username) VALUES ('linux@bajcito.com', '123', 'linux');
INSERT INTO users (email, password, username) VALUES ('cannax@mars.com', '123', 'cannax');
INSERT INTO users (email, password, username) VALUES ('coltsteele@udemy.com', '123', 'coltsteele');

SELECT * FROM users;

CREATE TABLE IF NOT EXISTS cats (
                                    id INT AUTO_INCREMENT PRIMARY KEY,
                                    name VARCHAR(255) NOT NULL,
    breed VARCHAR(255),
    main_color VARCHAR(255),
    age INT NOT NULL
    );

INSERT INTO cats (name, breed, main_color, age) VALUES
                                                    ('Gloria Maria', 'Mini Black Panther', 'Black', 4),
                                                    ('Linux Bajcito', 'Lazy King', 'White, Gray', 4),
                                                    ('Mars', 'SRD', 'Yellow', 5);

INSERT INTO cats (name, breed, main_color, age) VALUES ('Egg', '', '', 7);

DESCRIBE cats;
DESCRIBE users;

SELECT * FROM users;

UPDATE cats SET age = '42' WHERE id = '4';
UPDATE cats SET breed = 'Provider' WHERE id = '4';
UPDATE cats SET main_color = 'Orange' WHERE id = '5';
SELECT * FROM cats WHERE breed = 'Provider';

DELETE FROM cats WHERE name='Egg';
SELECT * FROM cats;

-- *********************************************************************** --

SHOW DATABASES;
USE `steele-mysql`;

SHOW TABLES;

CREATE TABLE books
(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT
);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
    ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
    ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
    ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
    ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
    ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
    ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
    ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
    ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
    ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
    ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
    ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
    ('Where I\'m Calling From: Selected Stories', 'Raymond', 'Carver', 1989, 12, 526),
    ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
    ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
    ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
    ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages) VALUES
('Tropicália: A História de Uma Revolução Musical', 'Carlos', 'Calado', 1997, 10, 256),
('Chega de Saudade: A História e as Histórias da Bossa Nova', 'Ruy', 'Castro', 1990, 8, 432),
('O Som do Vinil', 'Charles', 'Gavin', 2015, 5, 304),
('O Fabuloso Baú do Raul', 'Jotabê', 'Medeiros', 2018, 7, 320),
('Belchior: Apenas um Rapaz Latino-Americano', 'Jotabê', 'Medeiros', 2017, 10, 352),
('Gilberto Gil: Todas as Letras', 'Gilberto', 'Gil', 1996, 6, 576),
('Songbook Tom Jobim', 'Almir', 'Chediak', 1991, 5, 520),
('Elis Regina: Nada Será Como Antes', 'Júlio', 'Maria', 2015, 8, 464),
('O Rei - Roberto Carlos e os Bastidores da Construção do Mito', 'Paulo', 'César de Araújo', 2006, 6, 572),
('A Banda Tropicalista do Zé e Outras Histórias', 'Jorge', 'Mautner', 1971, 4, 208),
('How Music Works', 'David', 'Byrne', 2012, 12, 384),
('Musicophilia: Tales of Music and the Brain', 'Oliver', 'Sacks', 2007, 9, 425),
('This Is Your Brain on Music', 'Daniel', 'Levitin', 2006, 7, 336),
('Please Kill Me: The Uncensored Oral History of Punk', 'Legs', 'McNeil', 1996, 8, 448),
('The Rest Is Noise: Listening to the Twentieth Century', 'Alex', 'Ross', 2007, 11, 624),
('Girl in a Band', 'Kim', 'Gordon', 2015, 6, 288),
('Scar Tissue', 'Anthony', 'Kiedis', 2004, 10, 480),
('Just Kids', 'Patti', 'Smith', 2010, 7, 320),
('Miles: The Autobiography', 'Miles', 'Davis', 1989, 5, 441),
('Chronicles: Volume One', 'Bob', 'Dylan', 2004, 9, 320),
('Life', 'Keith', 'Richards', 2010, 7, 576),
('Born to Run', 'Bruce', 'Springsteen', 2016, 8, 528),
('The Dirt: Confessions of the World\'s Most Notorious Rock Band', 'Tommy', 'Lee', 2001, 6, 448),
    ('Hammer of the Gods: The Led Zeppelin Saga', 'Stephen', 'Davis', 1985, 8, 480),
    ('No One Here Gets Out Alive', 'Jerry', 'Hopkins', 1980, 6, 396),
    ('The Beatles: The Biography', 'Bob', 'Spitz', 2005, 12, 992),
    ('Elvis Presley: A Life', 'Bobbie Ann', 'Mason', 2003, 5, 192),
    ('Hitmakers: The Science of Popularity in an Age of Distraction', 'Derek', 'Thompson', 2017, 10, 352),
    ('The Song Machine: Inside the Hit Factory', 'John', 'Seabrook', 2015, 9, 288),
    ('Rip It Up and Start Again: Postpunk 1978-1984', 'Simon', 'Reynolds', 2005, 7, 600),
    ('Can’t Stop Won’t Stop: A History of the Hip-Hop Generation', 'Jeff', 'Chang', 2005, 10, 560),
    ('Love Is a Mix Tape', 'Rob', 'Sheffield', 2007, 8, 240),
    ('Meet Me in the Bathroom', 'Lizzy', 'Goodman', 2017, 9, 640),
    ('Let\'s Talk About Love: Why Other People Have Such Bad Taste', 'Carl', 'Wilson', 2007, 6, 176),
('The Sound of the City: The Rise of Rock and Roll', 'Charlie', 'Gillett', 1970, 7, 544),
('Psychotic Reactions and Carburetor Dung', 'Lester', 'Bangs', 1987, 5, 416),
('Wonderful Tonight: George Harrison, Eric Clapton, and Me', 'Pattie', 'Boyd', 2007, 9, 336),
('Waging Heavy Peace', 'Neil', 'Young', 2012, 6, 512),
('A Light That Never Goes Out: The Enduring Saga of The Smiths', 'Tony', 'Fletcher', 2012, 7, 704),
('Bowie: A Biography', 'Marc', 'Spitz', 2009, 10, 448),
('John Lennon: The Life', 'Philip', 'Norman', 2008, 8, 864),
('Queen: As It Began', 'Jacky', 'Smith', 1992, 6, 192),
('Room Full of Mirrors: A Biography of Jimi Hendrix', 'Charles', 'Cross', 2005, 8, 400),
('The Immortals: Celebrating 50 Great Music Icons', 'Rolling', 'Stone', 2004, 10, 208);


SELECT author_fname, author_lname FROM books;
SELECT CONCAT(author_fname, ' ', author_lname) AS `Author Name` FROM books;
SELECT CONCAT_WS(' ', author_fname, author_lname) AS `Author Name` FROM books;
SELECT title, SUBSTR(title, 1, 10) AS Substring FROM books;
SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS Substring FROM books;
SELECT REPLACE(title, ' ', '-') FROM books;
SELECT REVERSE(title) FROM books;
SELECT title, REVERSE(title), CHAR_LENGTH(title) FROM books;
SELECT title, CHAR_LENGTH(title), LENGTH(title) FROM books; -- retorna numero de letras, caracteres
SELECT title, LENGTH(title) FROM books; -- retorna numero de bits
SELECT title, UPPER(title), LOWER(title) FROM books;
SELECT INSERT('Hello Bobby', 6, 0, 'There');
SELECT LEFT('omghahalol!', 3);
SELECT RIGHT('omghahalol!', 4);
SELECT REPEAT('ha', 4);
SELECT TRIM('  pickle  ');

-- exercises
SELECT CONCAT(title, ' was released in ', released_year) AS Blurb FROM books;
SELECT
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ', ', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity FROM books;

SELECT * FROM books;