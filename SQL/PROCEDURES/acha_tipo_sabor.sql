SELECT DISTINCT SABOR FROM tabela_de_produtos;



call acha_ti	DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_tipo_sabor`(vProduto varchar(50))
BEGIN
	DECLARE vSabor varchar(50);
    SELECT sabor INTO vSabor from tabela_de_produtos WHERE codigo_do_produto = vProduto;
    case vSabor
    WHEN 'Lima/Limão' THEN SELECT 'Cítrico';
    WHEN 'Laranja' THEN SELECT 'Cítrico';
    WHEN 'Morango/Limão' THEN SELECT 'Cítrico';
    WHEN 'Uva' THEN SELECT 'Neutro';
    WHEN 'Morango' THEN SELECT 'Neutro';
    ELSE SELECT 'Outros';
    END CASE;
END$$
DELIMITER ;
