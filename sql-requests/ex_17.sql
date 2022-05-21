SELECT
	SUM(i.total) AS TotalSell,
	e.FirstName || " " || e.LastName AS FullName
FROM
	Employee e
LEFT JOIN
	Customer c ON e.EmployeeId = c.SupportRepId
JOIN 
	Invoice i ON c.CustomerId = i.CustomerId 
WHERE
	e.Title LIKE '%sales%' OR '%agent%'
GROUP BY
	e.EmployeeId
