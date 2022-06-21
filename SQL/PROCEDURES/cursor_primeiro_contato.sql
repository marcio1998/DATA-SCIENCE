DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursos_primeiro_contato`()
BEGIN
	DECLARE vNome varchar(50);
    DECLARE c CURSOR FOR SELECT NOME FROM tabela_de_clientes limit 4;
    OPEN c;
	FETCH c INTO vNome;
    SELECT vNome;
    FETCH c INTO vNome;
    SELECT vNome;
    FETCH c INTO vNome;
    SELECT vNome;
    CLOSE c;
END$$
DELIMITER ;
