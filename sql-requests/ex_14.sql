SELECT
	count(*) AS TrackCount,
	p.Name AS PlaylistName
FROM
	Playlist p
JOIN
	PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY
	p.Name
