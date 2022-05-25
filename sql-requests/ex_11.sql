SELECT
	il.InvoiceId,
	t.Name
FROM
	InvoiceLine il
INNER JOIN
	Track t ON il.TrackId = t.TrackId
GROUP BY
	t.Name
	
