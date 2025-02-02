-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT 
tra.TrackId as Id,
tra.Name as Musica,
alb.title as Album,
art.Name as Artista

FROM 
tracks as tra
INNER JOIN albums as alb ON tra.AlbumId = alb.AlbumId
INNER join artists as art ON art.artistId = alb.artistId;



-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
with musica as 
(
SELECT 
tra.TrackId as Id,
tra.Name as Musica,
alb.title as Album,
art.Name as Artista

FROM 
tracks as tra
INNER JOIN albums as alb ON tra.AlbumId = alb.AlbumId
INNER join artists as art ON art.artistId = alb.artistId)

SELECT
artista,
count(musica) as qtd_musica

From musica

WHERE artista LIKE 'Caetano%';