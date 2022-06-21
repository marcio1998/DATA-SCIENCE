DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_sabor_produto`(vProduto varchar(50))
BEGIN
DECLARE vSabor varchar(50);
SELECT SABOR INTO vSabor FROM TABELA_DE_PRODUTOS WHERE CODIGO_DO_PRODUTO = vProduto;
SELECT vSabor;
END$$
DELIMITER ;
