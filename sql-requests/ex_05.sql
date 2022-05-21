SELECT DISTINCT
	BillingCountry
FROM
	Invoice
WHERE
	BillingCountry IS NOT NULL
