DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_numero_aleatorio`(vMin INT, vMax INT) RETURNS int
BEGIN
	DECLARE vRetorno INT DEFAULT 0;
    SELECT FLOOR((RAND()*(vMax-vMin+1))+vMin) INTO vRetorno;
RETURN vRetorno;
END$$
DELIMITER ;
