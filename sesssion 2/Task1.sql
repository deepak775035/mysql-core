-- Task 14 march 2022 Morning session

-- Qusetion 1: 
SELECT c.city , c.customerName, m.customerName FROM customers c INNER JOIN customers m
ON c.city = m.city WHERE c.customerName<>m.customerName ORDER BY c.city;


-- Qusetion 2: 
SELECT p.productCode , p.ProductName , l.textDescription FROM products p INNER JOIN productlines l
ON p.productline = l.productline;

-- Qusetion 3: 
SELECT o.orderNumber , o.status , SUM(priceEach*quantityOrdered) FROM orders o INNER JOIN orderdetails od
ON o.orderNumber=od.orderNumber GROUP BY od.orderNumber;

-- Qusetion 4: 
SELECT o.orderNumber,o.orderDate, od.orderLineNumber, p.productName, od.quantityOrdered,od.priceEach FROM orders o 
INNER JOIN orderdetails od ON o.orderNumber=od.orderNumber
INNER JOIN products p ON od.productCode=p.productCode
ORDER BY orderNumber,orderLineNumber;


-- Qusetion 5: 
SELECT o.orderNumber,o.orderdate,c.customerName,od.orderLineNumber,p.productName, od.quantityOrdered,od.priceEach FROM orders o
INNER JOIN customers c ON o.customerNumber=c.customerNumber
INNER JOIN orderdetails od ON o.orderNumber=od.orderNumber
INNER JOIN products p ON od.productCode=p.productCode
ORDER BY orderNumber,orderLineNumber;



-- Qusetion 6: 
SELECT od.orderNumber, p.productName, msrp, priceEach FROM orderdetails od
INNER JOIN products p ON od.productCode=p.productCode
WHERE p.productCode = 'S10_1678' AND priceEach<msrp;


-- Qusetion 7:
SELECT c.customerNumber, c.customerName, o.ordernumber, o.status FROM customers c
LEFT JOIN orders o ON c.customerNumber=o.customerNumber;


 
-- Qusetion 8:
SELECT c.customerNumber, c.customerName, o.ordernumber, o.status FROM customers c
LEFT JOIN orders o ON c.customerNumber=o.customerNumber AND o.ordernumber IS NULL;


