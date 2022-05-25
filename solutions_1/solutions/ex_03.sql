-- 3
SELECT c.FirstName || ' ' || c.Lastname AS FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE Country = 'Brazil';