-- 11
SELECT i.InvoiceId, t.Name
FROM InvoiceLine i
JOIN Track t ON i.TrackId = t.TrackId
GROUP BY t.Name;