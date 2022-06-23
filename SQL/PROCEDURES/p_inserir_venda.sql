DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insereir_venda`(vData DATE, vMax_item INT, 
vMax_quantidade INT)
BEGIN
	DECLARE vCliente VARCHAR(11);
    DECLARE vProduto VARCHAR(10);
    DECLARE vVendedor VARCHAR(5);
    DECLARE vQuantidade INT;
    DECLARE vPreco FLOAT;
    DECLARE vItens INT;
    DECLARE vNumero_nota INT;
    DECLARE vContador INT DEFAULT 1;
    DECLARE vNumero_itens_nota INT;
    
    SELECT MAX(NUMERO)  + 1 INTO vNumero_nota FROM notas_fiscais;
    SET vCliente = f_cliente_aleatorio();
    SET vVendedor = f_vendedor_aleatorio();
    INSERT INTO notas_fiscais (cpf,matricula,data_venda,numero,imposto)
    VALUES (vCliente, vVendedor, vData, vNumero_nota,0.18);
    SET vItens = f_numero_aleatorio(1,vMax_item);
    WHILE vContador <= vItens
		DO
			SET vProduto = f_produto_aleatorio();
            SELECT COUNT(*) INTO vNumero_itens_nota FROM itens_notas_fiscais
            WHERE numero = vNumero_nota AND codigo_do_produto = vProduto;
            IF vNumero_itens_nota = 0 THEN 
				SET vQuantidade = f_numero_aleatorio(10,vMax_quantidade);
				SELECT preco_de_lista INTO vPreco FROM tabela_de_produtos 
				WHERE codigo_do_produto = vProduto;
				INSERT INTO itens_notas_fiscais(numero,codigo_do_produto,quantidade,
				preco) VALUES (vNumero_nota, vProduto, vQuantidade, vPreco);
			END IF;
            SET vContador = vContador + 1;
    END WHILE;
END$$
DELIMITER ;
