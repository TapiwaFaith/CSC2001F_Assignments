WITH RECURSIVE superior_employee AS
(
	SELECT
		employeeNumber,
		firstName,
		lastName,
		reportsTo
	FROM employees
    WHERE reportsTo = (SELECT reportsTo FROM employees WHERE employeeNumber = 1625)
    UNION ALL
	SELECT
		employees.employeeNumber,
        employees.firstName,
        employees.lastName,
        employees.reportsTo
	FROM employees
    INNER JOIN superior_employee
    ON employees.employeeNumber = superior_employee.reportsTo
    WHERE employees.employeeNumber != 1625
)

SELECT
	employeeNumber,
	firstName,
	lastName,
	reportsTo
FROM superior_employee
WHERE employeeNumber != 1625
ORDER BY employeeNumber DESC