SELECT
(SELECT COUNT(musica_id) FROM SpotifyClone.musica) AS cancoes,
(SELECT COUNT(ID_artista) FROM SpotifyClone.artista) AS artistas,
(SELECT COUNT(ID_album) FROM SpotifyClone.album) AS albuns;