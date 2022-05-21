SELECT
	il.InvoiceId,
	t.TrackName
FROM
	InvoiceLine il
INNER JOIN
	Track t ON il.TrackId = t.TrackId
