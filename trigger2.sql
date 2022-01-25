DROP TRIGGER IF EXISTS atualizaFuncionamentoLinha;

CREATE TRIGGER atualizaFuncionamentoLinha
AFTER INSERT ON DesativaçãoLinha FOR EACH ROW
BEGIN
	UPDATE Linha
		SET EmFuncionamento = 0
		WHERE Linha.idLinha = new.idLinha;
END;