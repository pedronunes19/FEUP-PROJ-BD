CREATE TRIGGER atualizaFuncionamentoParagem
AFTER INSERT ON DesativaçãoParagem FOR EACH ROW
WHEN 
((SELECT DataInício FROM AlteraçãoServiço WHERE NEW.idAlteraçãoServiço=AlteraçãoServiço.idAlteraçãoServiço) <= DATE('now')
AND
(SELECT DataFinal FROM AlteraçãoServiço WHERE NEW.idAlteraçãoServiço=AlteraçãoServiço.idAlteraçãoServiço) >= DATE('now'))
BEGIN
	UPDATE Paragem
		SET EmFuncionamento = 0
		WHERE Paragem.idParagem = new.idParagem;
END;