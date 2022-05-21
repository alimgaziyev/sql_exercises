SELECT
	InvoiceId,
	count(InvoiceLineId) AS CountInvoiceLine
FROM
	InvoiceLine
GROUP BY
	InvoiceId
