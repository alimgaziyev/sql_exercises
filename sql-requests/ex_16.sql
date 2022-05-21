SELECT
	i.InvoiceId,
	count(il.InvoiceLineId) AS PositionCount
FROM
	Invoice i
JOIN
	InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY
	i.InvoiceId
