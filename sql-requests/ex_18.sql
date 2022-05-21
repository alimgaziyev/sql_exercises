SELECT MAX(TotalSell) AS MaxTotalSell, FullName
FROM (SELECT
	SUM(i.total) TotalSell,
	e.FirstName || " " || e.LastName AS FullName
FROM
	Employee e
INNER JOIN
	Customer c ON e.EmployeeId = c.SupportRepId
INNER JOIN 
	Invoice i ON c.CustomerId = i.CustomerId
WHERE
	(e.Title LIKE '%sales%' OR '%agent%')
	AND
	(strftime('%Y', i.InvoiceDate) IN ('2009'))
GROUP BY
	FullName)
