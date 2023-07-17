CREATE DATABASE SHOP;

USE SHOP;

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
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
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
      
-- --INNER JOIN
SELECT * FROM CUSTOMERS JOIN ORDERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID;

SELECT CONCAT(first_name ,' ',last_name)AS CUSTOMERS , SUM(amount)AS TOTAL FROM CUSTOMERS
JOIN ORDERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID 
GROUP BY first_name , last_name 
ORDER BY TOTAL; 


-- --LEFT JOIN
SELECT * FROM CUSTOMERS LEFT JOIN ORDERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID;
 
SELECT CONCAT(first_name ,' ',last_name)AS CUSTOMERS , IFNULL(SUM(amount),0)AS TOTAL FROM CUSTOMERS
LEFT JOIN ORDERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID 
GROUP BY first_name , last_name 
ORDER BY TOTAL; 

-- --RIGHT JOIN
SELECT * FROM ORDERS RIGHT JOIN CUSTOMERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID;

SELECT CONCAT(first_name ,' ',last_name)AS CUSTOMERS , IFNULL(SUM(amount),0)AS TOTAL FROM ORDERS
RIGHT JOIN CUSTOMERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID 
GROUP BY first_name , last_name 
ORDER BY TOTAL; 

-- --PRACTICE
CREATE TABLE STUDENTS (
 ID INT PRIMARY KEY AUTO_INCREMENT,
 FIRST_NAME VARCHAR(50));
 
 CREATE TABLE PAPERS(
 TITLE VARCHAR(50),
 GRADE VARCHAR(5),
 STUDENT_ID INT,
 FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTS(ID)
 );
 
 SELECT FIRST_NAME , IFNULL(AVG(GRADE),0)AS AVERAGE,
 CASE
 WHEN 
	IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
        ELSE 'failing'
 END  AS passing_status
 FROM STUDENTS
 LEFT JOIN PAPERS ON STUDENTS.ID = PAPERS.STUDENT_ID GROUP BY FIRST_NAME ORDER BY average DESC;