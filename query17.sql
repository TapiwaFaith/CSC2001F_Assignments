SELECT employeeNumber, COUNT(*) AS numCustomers
FROM employees
INNER JOIN customers
ON customers.salesRepEmployeeNumber = employees.employeeNumber
GROUP BY employeeNumber