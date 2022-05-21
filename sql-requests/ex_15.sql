SELECT
	t.Name AS TrackName,
	al.Title AS AlbumName,
	m.Name AS MediaType,
	g.Name AS Genre
FROM
	Track t
INNER JOIN
	Album al ON al.AlbumId = t.AlbumId
INNER JOIN
	Genre g ON g.GenreId = t.GenreId
INNER JOIN
	MediaType m ON m.MediaTypeId = t.MediaTypeId
