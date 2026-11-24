Use northwind;

-- Write a query to list the product id, product name, and unit price of every product. This time, display them in ascending order by price.
SELECT productid, productname, unitprice
FROM Products
ORDER BY unitprice ASC;

-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price
SELECT productid, productname, unitsinstock, unitprice
FROM Products
WHERE unitsinstock >= 100
ORDER BY unitprice DESC;

-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. If two or more have the same price, list those in ascending order by product name.
SELECT productid, productname, unitsinstock, unitprice
FROM Products
WHERE unitsinstock >= 100
ORDER BY unitprice DESC, productname ASC;

-- Write a query against the orders table that displays the total number of distinct customers who have placed orders, based on customer ID. Use an alias to label the count calculation as CustomerCount.
SELECT COUNT(DISTINCT customerid) AS customercount
FROM orders;

-- Write a query against the orders table that displays the total number of distinct customers who have placed orders, by customer ID, for each country where orders have been shipped. Again, use an alias to label the count as CustomerCount. Order the list by the CustomerCount, largest to smallest
SELECT COUNT(DISTINCT customerid) AS customercount, shipcountry
FROM orders
GROUP BY shipcountry
ORDER BY customercount DESC;

-- What are the products that we carry where we have less than 25 units on hand, but 1 or more units of them are on order? Write a query that orders them by quantity on order (high to low), then by product name.
SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock < 25
  AND UnitsOnOrder >= 1
ORDER BY UnitsOnOrder DESC, ProductName ASC;

-- Write a query to list each of the job titles in employees, along with a count of how many employees hold each job title.
SELECT Title, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Title;

-- What employees have a monthly salary that is between $2000 and $2500? Write a query that orders them by job title
SELECT FirstName, LastName, Title, Salary
FROM Employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title ASC;