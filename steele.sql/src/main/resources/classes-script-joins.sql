SHOW DATABASES;
USE `steele-mysql`;

SHOW TABLES;

SELECT * FROM books;

CREATE TABLE customers (
                           id INT PRIMARY KEY AUTO_INCREMENT,
                           first_name VARCHAR(50),
                           last_name VARCHAR(50),
                           email VARCHAR(50)
);

CREATE TABLE orders (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        order_date DATE,
                        amount DECIMAL(8,2),
                        customer_id INT,
                        FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');


INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM customers, orders;

SELECT * FROM customers c
LEFT JOIN orders o on c.id = o.customer_id
WHERE c.first_name = 'Boy';

SELECT * FROM orders
LEFT JOIN customers c on c.id = orders.customer_id ;

SELECT c.first_name, IFNULL(SUM(o.amount), 0) soma
FROM customers c
    LEFT JOIN orders o on c.id = o.customer_id
GROUP BY c.first_name
ORDER BY soma DESC;

-- __________EXERCISES__________
-- _____________________________
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50)
);

CREATE TABLE papers (
    paper_id INT PRIMARY KEY AUTO_INCREMENT,
    paper_title VARCHAR(50),
    grade DECIMAL(4,2),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (student_name) VALUES
      ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, paper_title, grade ) VALUES
       (1, 'My First Book Report', 60),
       (1, 'My Second Book Report', 75),
       (2, 'Russian Lit Through The Ages', 94),
       (2, 'De Montaigne and The Art of The Essay', 98),
       (4, 'Borges and Magical Realism', 89);

SELECT * FROM papers;
SELECT * FROM students;

SELECT
    student_name,
    p.paper_title,
    p.grade
FROM students
    JOIN papers p on students.student_id = p.student_id
ORDER BY p.grade DESC;

SELECT student_name, p.paper_title, p.grade FROM students
    LEFT JOIN papers p on students.student_id = p.student_id;

SELECT student_name, IFNULL(p.paper_title, 'MISSING'), IFNULL(p.grade, 0) FROM students
    LEFT JOIN papers p on students.student_id = p.student_id;


SELECT student_name, IFNULL(FORMAT(AVG(p.grade), 2), 0) average FROM students
   LEFT JOIN papers p on students.student_id = p.student_id
GROUP BY student_name
ORDER BY average DESC;

SELECT
    student_name,
    IFNULL(FORMAT(AVG(p.grade), 2), 0) average,
    IF(AVG(p.grade) > 70, 'PASSING', 'FAILING') passing_status
FROM students
    LEFT JOIN papers p on students.student_id = p.student_id
GROUP BY student_name
ORDER BY average DESC;

