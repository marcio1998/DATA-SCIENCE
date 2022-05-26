SELECT * FROM  tabela_de_vendedores;
SELECT * FROM notas_fiscais;
SELECT * FROM itens_notas_fiscais;
SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_vendedores A 
LEFT JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA;

SELECT A.MATRICULA, A.NOME, COUNT(*) AS CONTAGEM
FROM tabela_de_vendedores A 
LEFT JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;

SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO
FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF 
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA_VENDA);

/*LEFT JOIN*/
SELECT COUNT(*) FROM tabela_de_clientes;

SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;

SELECT DISTINCT(A.CPF), A.NOME, B.CPF FROM tabela_de_clientes A LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

SELECT DISTINCT(A.CPF), A.NOME, B.CPF, B.DATA_VENDA FROM tabela_de_clientes A LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL;


/*CROSS JOIN AND FULL JOIN*/
SELECT * FROM tabela_de_vendedores INNER JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME,DE_FERIAS ,tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME FROM tabela_de_vendedores RIGHT JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, DE_FERIAS ,tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME FROM tabela_de_vendedores FULL JOIN tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

/*UNION*/
SELECT DISTINCT(BAIRRO) FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT(BAIRRO) FROM tabela_de_vendedores;




