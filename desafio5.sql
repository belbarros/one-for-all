SELECT s.title AS cancao, COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.history AS h ON s.id = h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
