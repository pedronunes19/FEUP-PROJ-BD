--linhas que percorrem paragens de uma zona, e quantas paragens percorrem atualmente
.mode columns
.headers on
.nullvalue NULL

select Zona.Nome, Linha.Número, count(Paragem.idParagem) as ParagensPercorridas from (select distinct Passagem.idLinha, Passagem.idParagem from Passagem where Passagem.idLinha=Passagem.idLinha and Passagem.idParagem=Passagem.idParagem) as Passagem, Paragem, Linha, Zona where Passagem.idParagem=Paragem.idParagem and Passagem.idLinha=Linha.idLinha and Paragem.idZona=Zona.idZona group by Zona.Nome;
