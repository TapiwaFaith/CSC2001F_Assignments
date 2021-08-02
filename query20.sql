SELECT employeeNumber
FROM employees
WHERE
reportsTo = (SELECT reportsTo FROM employees WHERE employeeNumber = 1166) AND employeeNumber != 1166