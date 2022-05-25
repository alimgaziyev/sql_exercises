SELECT
	strftime('%Y', InvoiceDate) AS Year,
	SUM(total) AS Total_sale
FROM
	Invoice
WHERE
	strftime('%Y', InvoiceDate) LIKE '2009'
	OR
	strftime('%Y', InvoiceDate) LIKE '2011'
GROUP BY
	strftime('%Y', InvoiceDate);
