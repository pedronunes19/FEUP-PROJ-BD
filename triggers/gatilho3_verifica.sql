SELECT Hora FROM Passagem WHERE idPassagem=1;
SELECT Hora FROM Passagem WHERE idPassagem=130;

INSERT INTO AlteraçãoHorário values(3, 1);
INSERT INTO AlteraçãoHorário values(4, 130);	

SELECT Hora FROM Passagem WHERE idPassagem=1;
SELECT Hora FROM Passagem WHERE idPassagem=130;
