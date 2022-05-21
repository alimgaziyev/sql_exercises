SELECT
	strftime('%Y', InvoiceDate) AS Year,
	total
FROM
	Invoice
WHERE
	strftime('%Y', InvoiceDate) BETWEEN '2009' AND '2011'
