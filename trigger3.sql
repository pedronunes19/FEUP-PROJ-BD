DROP TRIGGER IF EXISTS atualizaHorário;

CREATE TRIGGER atualizaHorário
AFTER INSERT ON AlteraçãoHorário FOR EACH ROW
BEGIN
	UPDATE Passagem
		SET Hora = null
		WHERE Passagem.idPassagem = new.idPassagem;
END;