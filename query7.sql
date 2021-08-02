SELECT productCode,
SUM((115/100) * buyPrice) totalPrice
FROM products
WHERE quantityInStock < 100
GROUP BY productCode