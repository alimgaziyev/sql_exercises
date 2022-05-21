SELECT
	count(pt.TrackId) AS TrackCount,
	p.Name AS PlaylistName
FROM
	Playlist p
LEFT JOIN
	PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY
	p.Name
