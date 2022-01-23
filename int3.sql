--nome das paragens pertencentes a uma zona
.mode columns
.headers on
.nullvalue NULL

select Zona.Nome, group_concat(Paragem.Nome, '; ') as paragem from Zona, Paragem where Zona.idZona=Paragem.idZona group by Zona.Nome;

