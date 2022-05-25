SELECT
	SUM(i.total) TotalSell,
	e.FirstName || " " || e.LastName AS FullName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId
ORDER BY
	TotalSell DESC
LIMIT 1
