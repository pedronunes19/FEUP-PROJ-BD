--primeira e última passagem em cada paragem
.mode columns
.headers on
.nullvalue NULL

SELECT Paragem.Nome, MIN(Hora) AS PrimeiraPassagem, MAX(Hora) AS ÚltimaPassagem
FROM Paragem, Passagem WHERE Paragem.idParagem = Passagem.idParagem
GROUP BY Passagem.idParagem;