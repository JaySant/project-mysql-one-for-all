SELECT art.nome_artista AS artista,
alb.nome_album AS album
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb ON art.ID_artista = alb.ID_artista
WHERE art.ID_artista = 3