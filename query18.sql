SELECT SUM(quantityOrdered * priceEach) total
FROM orderdetails
WHERE orderNumber = 10100