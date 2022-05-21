SELECT
	t.Name AS TrackName,
	COUNT(il.Quantity) AS TrackCount
FROM
	Track t
INNER JOIN
	InvoiceLine il ON t.TrackId = il.TrackId
INNER JOIN
	Invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY
	TrackName
ORDER BY
	TrackCount DESC
LIMIT
	5

