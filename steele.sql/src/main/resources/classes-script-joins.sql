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


SELECT c.first_name, SUM(o.amount) soma
FROM customers c
    LEFT JOIN orders o on c.id = o.customer_id
GROUP BY c.first_name
ORDER BY soma DESC;

