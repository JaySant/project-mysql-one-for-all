SELECT m.nome_musica AS cancao,
COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.musica AS m ON h.musica_id = m.musica_id
GROUP BY m.nome_musica
ORDER BY reproducoes DESC, cancao ASC LIMIT 2