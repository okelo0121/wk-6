-- Use the provided database
USE salesdb;

-- Q1: INNER JOIN employees and offices
-- Get firstName, lastName, email, and officeCode for all employees
SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;

-- Q2: LEFT JOIN products and productlines
-- Get productName, productVendor, and productLine for all products
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl
ON p.productLine = pl.productLine;

-- Q3: RIGHT JOIN customers and orders
-- Get orderDate, shippedDate, status, and customerNumber for the first 10 orders
SELECT o.orderDate, o.shippedDate, o.status, c.customerNumber
FROM customers c
RIGHT JOIN orders o
ON c.customerNumber = o.customerNumber
LIMIT 10;
