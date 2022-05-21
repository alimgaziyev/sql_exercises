SELECT
	i.InvoiceId,
	e.FirstName || ' ' || e.LastName AS FullName
FROM
	Employee e
INNER JOIN
	Customer c ON e.EmployeeId = c.SupportRepId
INNER JOIN
	Invoice i ON c.CustomerId = i.CustomerId
WHERE
	e.Title LIKE "%Sales%" OR "%Agent%"
