SELECT u.nome_usuario AS usuario,
IF (MAX(YEAR(data_reproducao)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h ON h.usuario_id = u.usuario_id
GROUP BY u.nome_usuario
ORDER BY u.nome_usuario