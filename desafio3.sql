SELECT u.nome_usuario AS usuario,
COUNT(h.musica_id) AS qt_de_musicas_ouvidas,
ROUND((SUM(m.duracao)/60),2) AS total_minutos
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musica AS m ON m.musica_id = h.musica_id
GROUP BY u.nome_usuario
ORDER BY u.nome_usuario