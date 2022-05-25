SELECT
	il.InvoiceId,
	t.Name AS TrackName,
	a.Name AS ArtistName
FROM
	Track t
INNER JOIN
	InvoiceLine il ON t.TrackId = il.TrackId
INNER JOIN
	Album al ON al.AlbumId = t.AlbumId
INNER JOIN
	Artist a ON a.ArtistId = al.ArtistId
GROUP BY
	t.Name
