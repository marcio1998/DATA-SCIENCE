DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursos_looping`()
BEGIN
	DECLARE fim_do_cursor INT DEFAULT 0;
	DECLARE vNome varchar(50);
    DECLARE c CURSOR FOR SELECT NOME FROM tabela_de_clientes LIMIT 4;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fim_do_cursor = 1;
    OPEN c;
    WHILE fim_do_cursor = 0
		DO
			fetch c into vNome;
            IF fim_do_cursor = 0 THEN
				SELECT vNome;
            END IF;
		END WHILE;
	CLOSE c;
END$$
DELIMITER ;
