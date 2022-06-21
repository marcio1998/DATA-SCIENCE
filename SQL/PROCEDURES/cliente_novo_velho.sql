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
	elseif vPreco >= 7 AND vPreco < 12 thenDELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_novo_velho`(vCPF varchar(20))
BEGIN
	DECLARE vResultado varchar(20);
    declare vDataNascimento date;
    select data_de_nascimento into vDataNascimento
    from tabela_de_clientes where CPF = vCPF;
    
    if vDataNascimento <= '2000-01-01' then
		set vResultado = 'cliente velho';
    else
		set vResultado = 'cliente novo';
    end if;
	select vResultado;
END$$
DELIMITER ;

	END IF;
    select vMenssagem as Menssagem;
END$$
DELIMITER ;
('1000889');