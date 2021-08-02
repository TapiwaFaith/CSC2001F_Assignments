SELECT DISTINCT productName, buyPrice
FROM products
WHERE buyPrice = (SELECT MAX(buyPrice) FROM products)