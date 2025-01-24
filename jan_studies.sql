SHOW DATABASES;

-- docker start steele-mysql
USE `study_agenda_2025`;

SHOW TABLES;

UPDATE jan_studies SET data = '2025-01-18' WHERE id = '11';

INSERT INTO jan_studies (data, mysql_bootcamp, collections_generics, java_oca, java_dsa, java_book, hackrank_java, hackrank_sql)
VALUES
    ( CURDATE() - INTERVAL 3 DAY, 49, 100, 29, 8, 0, 293, 130),
    ( CURDATE() - INTERVAL 2 DAY, 49, 100, 29, 8, 0, 293, 130),
    ( CURDATE() - INTERVAL 1 DAY, 50, 100, 35, 8, 0, 315, 130);

SELECT
    data AS Data,
    mysql_bootcamp AS MySQL,
    java_oca AS OCA,
    hackrank_java AS HackerRankJava,
    hackrank_sql AS HackerRankSQL
FROM jan_studies ORDER BY jan_studies.data;

DESC jan_studies;

ALTER TABLE jan_studies
    ADD COLUMN hackrank_java INT NOT NULL DEFAULT 0 AFTER java_book;

ALTER TABLE jan_studies
    ADD COLUMN hackrank_sql INT NOT NULL DEFAULT 0 AFTER hackrank_java;

