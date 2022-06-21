DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `inclui_novo_produto_parametro`(vCodigo varchar(50), vNome varchar(50),  vEmbalagem varchar(50), vTamanho varchar(50), vSabor varchar(50),  vPreco decimal(10,2))
BEGIN
DECLARE menssagem varchar(30);
DECLARE EXIT HANDLER FOR 1062
BEGIN
SET menssagem = 'Problema de Chave Primaria';
SELECT menssagem;
END;
INSERT INTO TABELA_DE_PRODUTOS (CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA ) VALUES (vCodigo, vNome, vEmbalagem, vTamanho, vSabor, vPreco);
SET menssagem = 'Produto Incluido Com Sucesso';
SELECT menssagem;
END$$
DELIMITER ;
