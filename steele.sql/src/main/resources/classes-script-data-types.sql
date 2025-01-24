SHOW DATABASES;
-- docker start steele-mysql
USE `steele-mysql`;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS facts(
    fname VARCHAR(50),
    lname VARCHAR(50),
    birth_date DATE,
    birth_time TIME,
    fact_time DATETIME
);

ALTER TABLE facts
    ADD COLUMN created_at TIMESTAMP default CURRENT_TIMESTAMP;

ALTER TABLE facts
    AUTO_INCREMENT = 1000;

INSERT INTO facts(fname, lname, birth_date, birth_time, fact_time)
VALUES
    ('Satan', 'Goss', CURDATE() - INTERVAL 45 YEAR, CURRENT_TIME - INTERVAL 35 HOUR, TIMESTAMP(NOW() - INTERVAL 10 YEAR ));

SELECT * FROM facts;

SELECT NOW();
SELECT TIMESTAMP(NOW() - INTERVAL 1 DAY);

SELECT
    birth_date,
    DAY(birth_date),
    MONTHNAME(birth_date),
    YEAR(birth_date)
FROM facts;

SELECT
    birth_date,
    DAY(birth_date),
    DAYOFWEEK(birth_date),
    DAYOFYEAR(birth_date)
FROM facts;

SELECT
    birth_date,
    MONTHNAME(birth_date),
    YEAR(birth_date)
FROM facts;

-- EXERCICIOS
-- CHAR -> usado quando sabe-se exatamente o tamanho do dado que será alocado. É um array, trabalha com tamanho fixo.

CREATE TABLE inventory (
    item_name VARCHAR(50),
    price DOUBLE,
    quantity INTEGER
);

-- DATETIME || TIMESTAMP -> DATETIME TRAZ A HORA E A DATA EM UM RANGE MUITO MAIOR DE ABRANGÊNCIA
-- DO QUE TIMESTAMP, QUE APESAR DO MESMO FOMRATO DE EXIBIÇÃO, ESPANA DATA ENTRE 1970 E A DATA DE HOJE.
-- TIMESTAMP TAMBÉM É MAIS PERFORMATICO, POR SER MENOR.

SELECT CURTIME() - INTERVAL 3 HOUR, CURTIME();

SELECT DAYOFWEEK(birth_date) FROM facts;
SELECT DAY(birth_date) FROM facts;
SELECT birth_date, DAY(birth_date), DATE_FORMAT(birth_date, '%W') FROM facts;

SELECT birth_date, DATE_FORMAT(birth_date, GET_FORMAT(DATE,'USA')) FROM facts;
SELECT birth_date, DATE_FORMAT(birth_date, GET_FORMAT(DATE,'EUR')) FROM facts;
SELECT birth_date, DATE_FORMAT(birth_date, '%d/%m/%Y') FROM facts;
SELECT birth_date, DATE_FORMAT(birth_date, '%M %D at %T') FROM facts;
SELECT NOW(), DATE_FORMAT(NOW(), '%M %D at %T');

CREATE TABLE tweets (
   tweet_content VARCHAR(240),
   username VARCHAR(25),
   created_at TIMESTAMP default CURRENT_TIMESTAMP,
   updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DESC tweets;

SELECT * FROM facts;