SELECT
orders.orderNumber,
orders.status,
orderdetails.quantityOrdered AS quantityOrdered,
products.productName AS productName
FROM orders
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products
ON products.productCode = orderdetails.productCode
WHERE productVendor = 'Exoto Designs' AND status = 'Cancelled'