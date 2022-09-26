SELECT ar.name AS 'artista',
al.title AS 'album',
COUNT(f.user_id) AS 'seguidores'
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artist AS ar ON ar.id = al.artist_id
INNER JOIN SpotifyClone.following AS f ON f.artist_id = ar.id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;