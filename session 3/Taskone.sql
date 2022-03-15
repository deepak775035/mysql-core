-- Task 15 march 2022 Morning session

-- Qusetion 1:
SELECT customerNumber, checkNumber, amount FROM payments
WHERE amount > (SELECT AVG (amount) FROM payments);


-- Qusetion 2:  
SELECT customerName FROM customers WHERE customerNumber NOT IN (SELECT customerNumber FROM orders);


-- Qusetion 3:
SELECT MAX(items) ,MIN(items) ,FLOOR(AVG(items))
FROM (SELECT COUNT(orderNumber) AS items FROM orderdetails GROUP BY orderNumber) AS t


-- Qusetion 4: doubt(is Logic Correct)
SELECT productName, buyPrice FROM products outerp
WHERE buyPrice>(SELECT AVG(buyPrice) FROM products innerp WHERE innerp.productLine=outerp.productLine);


-- Qusetion 5:
SELECT * FROM 
(SELECT orderNumber, SUM(quantityOrdered * priceEach) AS total FROM orderdetails GROUP BY orderNumber) AS t
WHERE total>60000;


-- Qusetion 6:  NOT WORKING(doubt)
select customerNumber, customerName from customers c
where Exists