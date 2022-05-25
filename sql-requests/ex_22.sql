SELECT
	BillingCountry AS Country,
	SUM(total) Amount
FROM
	Invoice
GROUP BY
	Country
ORDER BY
	Amount DESC
