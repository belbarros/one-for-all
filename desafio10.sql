SELECT s.title AS nome,
COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.history AS h ON h.song_id = s.id
INNER JOIN SpotifyClone.user AS u ON u.id = h.user_id
WHERE (u.plan_id = 1 OR u.plan_id = 4)
GROUP BY nome
ORDER BY nome ASC;