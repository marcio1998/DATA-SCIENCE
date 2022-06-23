DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_acha_tipo_sabor`(vSabor varchar(50)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
	DECLARE vRetorno VARCHAR(20) DEFAULT '';
    case vSabor
    WHEN 'Lima/Limão' THEN SET vRetorno = 'Cítrico';
    WHEN 'Laranja' THEN SET vRetorno =  'Cítrico';
    WHEN 'Morango/Limão' THEN SET vRetorno =  'Cítrico';
    WHEN 'Uva' THEN SET vRetorno =  'Neutro';
    WHEN 'Morango' THEN SET vRetorno =  'Neutro';
    ELSE SET vRetorno =  'Outros';
	END CASE;
RETURN vRetorno;
END$$
DELIMITER ;
