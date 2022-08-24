SELECT u.nome AS usuario,
COUNT(h.usuario_id) AS qt_de_musicas_ouvidas,
ROUND(SUM((mus.duracao_em_segundos)/60), 2) AS total_minutos
FROM SpotifyClone.historicos AS h
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musicas AS mus
ON h.musica_id = mus.musica_id
GROUP BY h.usuario_id
ORDER BY u.nome;