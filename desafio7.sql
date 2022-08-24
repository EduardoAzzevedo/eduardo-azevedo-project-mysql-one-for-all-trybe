SELECT
art.nome_artista AS artista,
alb.nome_album AS album,
COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.artistas AS art
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguidores AS seg
ON art.artista_id = seg.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;