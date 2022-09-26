SELECT FORMAT(MIN(p.cost), 2) AS 'faturamento_minimo',
MAX(p.cost) AS 'faturamento_maximo',
ROUND(AVG(p.cost), 2) AS 'faturamento_medio',
TRUNCATE(SUM(p.cost), 2) AS 'faturamento_total'
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u ON p.id = u.plan_id;