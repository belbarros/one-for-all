SELECT ar.name AS 'artista',
al.title AS 'album'
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artist AS ar ON ar.id = al.artist_id
GROUP BY artista, album
ORDER BY artista ASC, album ASC
LIMIT 2 OFFSET 3;