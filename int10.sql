--linhas circulares (limites de linha são iguais)
.mode columns
.headers on
.nullvalue NULL

SELECT Número
FROM Linha
WHERE LimiteDaLnha1 = LimiteDaLnha2;