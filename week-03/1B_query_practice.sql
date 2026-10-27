SHOW TABLES;
--Write a query to list the product id, product name, and unit price.
SELECT productID, productname, unitprice FROM products;

--Write a query to identify the products where the unit price is $7.50 or less
SELECT unitprice FROM products WHERE unitprice <= 7.50;

--What are the products that we carry where we have no units on hand, but 1 or more
--units are on backorder?
SELECT UnitsInStock, UnitsOnOrder, ProductName FROM products WHERE UnitsInStock = 0 AND UnitsOnOrder >=1;

--Examine the products table. How does it identify the type (category) of each item
--sold? Where can you find a list of all categories? Write a set of queries to answer these
--questions, ending with a query that creates a list of all the seafood items we carry.
SELECT CategoryID, CategoryName FROM Categories;
WHERE CategoryID = 8;

--Examine the products table again. How do you know what supplier each product
--comes from? Where can you find info on suppliers? Write a set of queries to find the
--specific identifier for "Tokyo Traders" and then find all products from that supplier.
SELECT ProductID, SupplierID FROM Products;
SELECT SupplierID, Companyname FROM Suppliers;
SELECT SupplierID, CompanyName FROM Suppliers WHERE CompanyName = 'Tokyo Traders';

--How many employees work at northwind? What employees have "manager"
--somewhere in their job title? Write queries to answer each question.
SELECT COUNT(*) AS EmployeeCount FROM Employees;
SELECT EmployeeID, Title, Firstname, LastName FROM Employees WHERE Title LIKE '%manager%'