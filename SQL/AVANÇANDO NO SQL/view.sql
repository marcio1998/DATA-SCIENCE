SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM (SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;	
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos GROUP BY EMBALAGEM;

SELECT * FROM vw_maiores_embalagens;