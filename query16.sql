SELECT officeCode, COUNT(*) AS numEmployees
FROM employees
GROUP BY officeCode