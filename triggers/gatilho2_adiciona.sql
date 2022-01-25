CREATE TRIGGER atualizaFuncionamentoLinha
AFTER INSERT ON DesativaçãoLinha FOR EACH ROW
WHEN 
((SELECT DataInício FROM AlteraçãoServiço WHERE NEW.idAlteraçãoServiço=AlteraçãoServiço.idAlteraçãoServiço) <= DATE('now')
AND
(SELECT DataFinal FROM AlteraçãoServiço WHERE NEW.idAlteraçãoServiço=AlteraçãoServiço.idAlteraçãoServiço) >= DATE('now'))
BEGIN
	UPDATE Linha
		SET EmFuncionamento = 0
		WHERE Linha.idLinha = new.idLinha;
END;