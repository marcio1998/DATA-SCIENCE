select * from tabela_de_produtos;


select preco_de_lista from tabela_de_produtos where codigo_do_produto = '';

call acha_status_precoDELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `acha_status_preco`(vProduto varchar(50))
BEGIN
	declare vPreco float;
    declare vMenssagem varchar(30);
    select preco_de_lista into vPreco
    from tabela_de_produtos where codigo_do_produto = vProduto;
    if vPreco >= 12 then
		set vMenssagem = 'PRODUTO CARO';
	elseif vPreco >= 7 AND vPreco < 12 then
		set vMenssagem = 'PRODUTO EM CONTA';
	else
		set vMenssagem = 'PRODUTO BARATO';
	END IF;
    select vMenssagem as Menssagem;
END$$
DELIMITER ;
('1000889');