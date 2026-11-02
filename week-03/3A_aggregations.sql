USE northwind;
-- Write a query to find the price of the cheapest item that Northwind sells. Then write a
-- second query to find the name of the product that has that price.

SELECT MIN(unitprice) AS cheapestprice
FROM products;

SELECT productname
FROM products
WHERE unitprice = (
SELECT MIN(unitprice)
FROM products);

-- Write a query to find the average price of all items that Northwind sells.
SELECT AVG(unitprice) AS averageprice
FROM products;

-- Write a query to find the price of the most expensive item that Northwind sells. Then
-- write a second query to find the name of the product with that price, plus the name of
-- the supplier for that product.

SELECT MAX(unitprice) AS mostexpensive
FROM products;

SELECT productName, 
companyname AS suppliername,
unitprice
FROM products
JOIN suppliers
    ON products.supplierID = suppliers.supplierid
WHERE products.unitprice = (SELECT MAX(unitprice)
FROM products);

-- Write a query to find total monthly payroll (the sum of all the employees’ monthly
-- salaries)

SELECT SUM(salary) AS totalpayrollmonthly
FROM employees;

-- Write a query to identify the highest salary and the lowest salary amounts which any
-- employee makes. (Just the amounts, not the specific employees!)

SELECT MAX(salary) AS highest,
MIN(salary) AS lowest
FROM employees;

-- Write a query to find the name and supplier ID of each supplier and the number of
-- items they supply. Hint: Join is your friend here.

SELECT companyname, suppliers.supplierID,
COUNT(productID) AS productcount
FROM suppliers
JOIN products
ON suppliers.supplierid = products.supplierid
GROUP BY companyname, suppliers.supplierid;

-- Write a query to find the list of all category names and the average price for items in
-- each category.

SELECT categoryname,
AVG(unitprice) AS average
FROM categories
JOIN products
ON categories.categoryid = products.categoryid
GROUP BY categoryname;

-- Write a query to find, for all suppliers that provide at least 5 items to Northwind, what
-- is the name of each supplier and the number of items they supply.

SELECT companyname,
COUNT(productid) AS productcount
FROM suppliers
JOIN products
ON suppliers.supplierid = products.supplierid
GROUP BY companyname
HAVING COUNT(productid) >= 5;

-- Write a query to list products currently in inventory by the product id, product name,
-- and inventory value (calculated by multiplying unit price by the number of units on
-- hand). Sort the results in descending order by value. If two or more have the same
-- value, order by product name. If a product is not in stock, leave it off the list.

SELECT productid, productname,
unitprice * unitsinstock AS inventoryvalue
FROM products
WHERE unitsinstock > 0
ORDER BY inventoryvalue DESC, productname ASC