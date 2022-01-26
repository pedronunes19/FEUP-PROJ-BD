--tempo total de duração de cada alteraçãos de serviço na linha '202'
.mode columns
.headers on
.nullvalue NULL

SELECT AlteraçãoServiço.Motivo, CAST(ROUND(JULIANDAY(DataFinal) - JULIANDAY(DataInício), 0) AS INT) AS DuraçãoEmDias
FROM AlteraçãoServiço, DesativaçãoParagem, DesativaçãoLinha, AlteraçãoHorário, (Paragem JOIN Passagem ON Paragem.idParagem = Passagem.idParagem) AS ParagemPassagem
WHERE (AlteraçãoServiço.idTipoAlteração = 1 AND DesativaçãoParagem.idAlteraçãoServiço = AlteraçãoServiço.idAlteraçãoServiço AND ParagemPassagem.idParagem = DesativaçãoParagem.idParagem AND ParagemPassagem.idLinha = 3)
    OR (AlteraçãoServiço.idTipoAlteração = 2 AND DesativaçãoLinha.idAlteraçãoServiço = AlteraçãoServiço.idAlteraçãoServiço AND DesativaçãoLinha.idLinha = 3)
    OR (AlteraçãoServiço.idTipoAlteração = 3 AND AlteraçãoHorário.idALteraçãoServiço = AlteraçãoServiço.idALteraçãoServiço AND AlteraçãoHorário.idPassagem = ParagemPassagem.idPassagem AND ParagemPassagem.idLinha =3)
GROUP BY AlteraçãoServiço.Motivo;
