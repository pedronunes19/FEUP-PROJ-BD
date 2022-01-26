--linhas afetadas por uma alteração de serviço do tipo 'DesativaçãoLinha'
.mode columns
.headers on
.nullvalue NULL

SELECT Número FROM Linha, DesativaçãoLinha
WHERE Linha.idLinha = DesativaçãoLinha.idLinha;