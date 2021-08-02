DELETE orders, orderdetails
FROM orders
INNER JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
WHERE orders.orderNumber = 10101