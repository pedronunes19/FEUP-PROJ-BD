--nome dos condutores que não conduzem nenhum autocarro de tipo 'Articulado'
.mode columns
.headers on
.nullvalue NULL

SELECT Nome 
FROM Condutor 
EXCEPT 
SELECT c1.Nome 
FROM
Condutor as c1, CondutorDoAutocarro as a1, Autocarro as a2, TipoAutocarro as t1 
WHERE 
t1.Nome='Articulado' and t1.idTipoAutocarro=a2.idTipoAutocarro and c1.idCondutor=a1.idCondutor and a2.idAutocarro = a1.idAutocarro;