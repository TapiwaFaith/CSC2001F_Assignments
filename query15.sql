SELECT
products.productCode
FROM products
INNER JOIN orderdetails
ON orderdetails.productCode = products.productCode
WHERE orderdetails.productCode IS NULL