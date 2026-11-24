USE northwind;

-- What is the product name(s) of the most expensive products?

SELECT productname
FROM products
WHERE unitprice = (SELECT MAX(unitprice)
FROM products);

-- What is the product name(s) and categories of the least expensive products?

SELECT products.productname,
categoryname
FROM products
JOIN categories
ON products.categoryid = categories.categoryid
WHERE products.unitprice = (SELECT MIN(unitprice) 
FROM products);

-- What is the order id, shipping name and shipping address of all orders shipped via "Federal Shipping"?

SELECT orderid, shipname,
shipaddress
FROM orders
WHERE shipvia = (SELECT shipperid
FROM shippers
WHERE companyname = 'Federal Shipping');

-- What are the order ids of the orders that included "Sasquatch Ale"?

SELECT orderid
FROM `order details`
WHERE productid = ( SELECT productid 
FROM products
WHERE productname = 'Sasquatch Ale');

-- What is the name of the employee that sold order 10266?

SELECT firstname, lastName
FROM employees
WHERE employeeid = (SELECT employeeid
FROM orders
WHERE orderid = 10266);

-- What is the name of the customer that bought order 10266?

SELECT companyname
FROM customers
WHERE customerid = (SELECT customerid
FROM orders
WHERE orderid = 10266);