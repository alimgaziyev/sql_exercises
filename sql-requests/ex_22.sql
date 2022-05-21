SELECT
	BillingCountry AS Country,
	SUM(total) Amount
FROM
	Invoice
WHERE
	Country IS NOT NULL
GROUP BY
	Country
ORDER BY
	Amount DESC
