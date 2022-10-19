SELECT a.nome_artista AS artista,
alb.nome_album AS album,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.seguindo AS s
INNER JOIN SpotifyClone.artista AS a ON a.ID_artista = s.ID_artista
INNER JOIN SpotifyClone.album AS alb ON alb.ID_artista = s.ID_artista
GROUP BY a.nome_artista, alb.nome_album
ORDER BY seguidores DESC, artista ASC, album ASC