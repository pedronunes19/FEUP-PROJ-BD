--passagens das paragens pertencentes à linha 202 em horário de dias úteis (horário);
.mode columns
.headers on
.nullvalue NULL

select Paragem.Nome, group_concat(Passagem.Hora , '; ') as Passagens
from Horário, TipoHorário, Linha, Passagem, Paragem
where TipoHorário.Nome='Dias Úteis' 
    and Horário.idTipoHorário=TipoHorário.idTipoHorário 
    and Horário.idLinha=Linha.idLinha 
    and Passagem.idLinha=Linha.idLinha
    and Passagem.idParagem=Paragem.idParagem
    and Linha.Número=202
group by Paragem.Nome;
