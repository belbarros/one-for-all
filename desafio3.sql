SELECT 
u.username AS 'usuario', 
COUNT(h.user_id) AS 'qt_de_musicas_ouvidas', 
ROUND((SUM(s.length)/ 60), 2) AS 'total_minutos'

FROM SpotifyClone.user AS u

INNER JOIN SpotifyClone.history as h ON h.user_id = u.id 
INNER JOIN SpotifyClone.song as s ON h.song_id = s.id

GROUP BY u.username
ORDER BY u.username;