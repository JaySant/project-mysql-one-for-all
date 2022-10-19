SELECT m.nome_musica AS nome,
COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.musica AS m ON h.musica_id = m.musica_id
INNER JOIN SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
WHERE u.plano_ID = 1 OR u.plano_ID = 4
GROUP BY m.nome_musica
ORDER BY nome ASC