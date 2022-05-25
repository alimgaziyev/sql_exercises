SELECT
	count(*) AS count,
	i.BillingCountry AS Country
FROM
	InvoiceLine il
JOIN
	Invoice i ON il.InvoiceId = i.InvoiceId
WHERE
	i.BillingCountry is not NULL
GROUP BY
	i.BillingCountry
