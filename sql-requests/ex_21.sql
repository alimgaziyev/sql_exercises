SELECT
	COUNT(c.CustomerId) ClientCount,
	e.FirstName || " " || e.LastName AS FullName
FROM
	Employee e
 JOIN
	Customer c ON e.EmployeeId = c.SupportRepId
WHERE
	(e.Title LIKE '%sales%' OR '%agent%')
GROUP BY
	e.EmployeeId
