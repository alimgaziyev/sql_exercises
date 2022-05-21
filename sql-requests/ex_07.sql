SELECT
	i.total,
	c.FirstName || " " || c.LastName AS FullNameCustomer,
	i.BillingCountry,
	e.FirstName || " " || e.LastName AS FullNameEmployee
FROM
	Invoice i
INNER JOIN
	Customer c ON c.CustomerId = i.CustomerId
INNER JOIN
	Employee e ON c.SupportRepId = e.EmployeeId
WHERE
	e.Title LIKE "%Sales%" OR "%Agent%"
