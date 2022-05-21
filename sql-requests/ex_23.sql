SELECT
	t.Name AS TrackName,
	COUNT(il.Quantity) AS TrackCount
FROM
	Track t
INNER JOIN 
	InvoiceLine il ON t.TrackId = il.TrackId
INNER JOIN 
	Invoice i ON il.InvoiceId = i.InvoiceId
WHERE
	strftime('%Y', i.InvoiceDate) IN ('2013')
GROUP BY
	TrackName
ORDER BY
	TrackCount DESC
