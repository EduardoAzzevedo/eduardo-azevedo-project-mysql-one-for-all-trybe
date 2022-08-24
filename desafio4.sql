SELECT u.nome AS 'usuario',
IF(MAX(YEAR(h.data_historico_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo')
AS status_usuario
FROM SpotifyClone.historicos AS h
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
GROUP BY u.usuario_id
ORDER BY nome;