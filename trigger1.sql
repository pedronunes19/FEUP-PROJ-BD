DROP TRIGGER IF EXISTS atualizaFuncionamentoParagem;

CREATE TRIGGER atualizaFuncionamentoParagem
AFTER INSERT ON DesativaçãoParagem FOR EACH ROW
BEGIN
	UPDATE Paragem
		SET EmFuncionamento = 0
		WHERE Paragem.idParagem = new.idParagem;
END;