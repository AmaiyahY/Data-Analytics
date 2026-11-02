USE Northwind;
-- Create a single query to list the product id, product name, unit price and category
-- name of all products. Order by category name and within that, by product name.

SELECT productname, productid,
unitprice, categoryname
FROM products
INNER JOIN categories
ON products.categoryid = categories.categoryid
ORDER BY productname, categoryname;

-- Create a single query to list the product id, product name, unit price and supplier
-- name of all products that cost more than $75. Order by product name.

SELECT productname, productid,
unitprice, companyname
FROM products
INNER JOIN suppliers
ON products.supplierid = suppliers.supplierid
WHERE unitprice > 75
ORDER BY productname;

-- Create a single query to list the product id, product name, unit price, category name,
-- and supplier name of every product. Order by product name.

SELECT productid, productname,
unitprice, categoryname, companyname
FROM products
INNER JOIN Suppliers
ON products.supplierid = suppliers.supplierid
INNER JOIN categories
ON products.categoryid = categories.categoryid
ORDER BY productname;
 
 -- Create a single query to list the order id, ship name, ship address, and shipping
-- company name of every order that shipped to Germany. Assign the shipping company
-- name the alias ‘Shipper.’ Order by the name of the shipper, then the name of who it
-- shipped to.

SELECT orderid, shipname
shipaddress, companyname AS shipper
FROM orders
JOIN shippers
ON shipvia = shipperid
WHERE shipcountry = 'Germany'
ORDER BY companyname, shipname;

-- Start from the same query as above (#4), but omit OrderID and add logic to group by
-- ship name, with a count of how many orders were shipped for that ship name.

SELECT shipname, shipaddress,
companyname AS shipper,
COUNT(*) AS ordercount
FROM orders
JOIN shippers
ON shipvia = shipperid
WHERE shipcountry = 'Germany'
GROUP BY shipname, shipaddress, companyname
ORDER BY companyname, shipname;

-- Create a single query to list the order id, order date, ship name, ship address of all
-- orders that included Sasquatch Ale.
-- Hint: You will need to join on three tables to accomplish this. (One of these tables
-- has a sneaky space in the name, so you will need to surround it with backticks, like
-- this: `table name`)

SELECT orders.orderid, orders.orderdate,
      orders.shipName, orders.shipaddress
FROM orders
INNER JOIN `order details`
    ON orders.orderid = `order details`.orderid
INNER JOIN products
    ON `order details`.productid = products.productid
WHERE productName = 'Sasquatch Ale'