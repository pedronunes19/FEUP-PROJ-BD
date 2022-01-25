--nome dos condutores que não conduzem nenhum autocarro de tipo 'Articulado'
.mode columns
.headers on
.nullvalue NULL


SELECT Nome
FROM Condutor
WHERE idCondutor
NOT IN
    (SELECT CondutorDoAutocarro.idCondutor
    FROM CondutorDoAutocarro JOIN Autocarro
    ON CondutorDoAutocarro.idAutocarro = Autocarro.idAutocarro
    WHERE idTipoAutocarro=2);