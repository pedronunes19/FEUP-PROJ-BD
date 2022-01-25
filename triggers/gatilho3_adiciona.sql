CREATE TRIGGER atualizaHorário
AFTER INSERT ON AlteraçãoHorário FOR EACH ROW
WHEN 
((SELECT DataInício FROM AlteraçãoServiço WHERE NEW.idAlteraçãoServiço=AlteraçãoServiço.idAlteraçãoServiço) <= DATE('now')
AND
(SELECT DataFinal FROM AlteraçãoServiço WHERE NEW.idAlteraçãoServiço=AlteraçãoServiço.idAlteraçãoServiço) >= DATE('now'))
BEGIN
	UPDATE Passagem
		SET Hora = null
		WHERE Passagem.idPassagem = new.idPassagem;
END;