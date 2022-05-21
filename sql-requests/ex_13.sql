SELECT
	count(InvoiceId) AS count,
	BillingCountry AS Country
FROM
	Invoice
WHERE
	BillingCountry is not NULL
GROUP BY
	BillingCountry
