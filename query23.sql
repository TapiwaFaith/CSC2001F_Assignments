SET @employeeNUmber = (SELECT MAX(employeeNumber) FROM employees);
UPDATE employees SET employeeNumber = @employeeNumber + 1
WHERE employeeNumber = 1625