-- 1
SELECT FirstName || ' ' || Lastname AS FullName, CustomerId, Country
FROM Customer
WHERE NOT Country = 'USA';