SELECT(23-(25+2)/2)*2 AS RESULTADO;
SELECT CEILING(12.3333333) AS RESULTADO;
SELECT ROUND(12.333333) AS RESULTADO;
SELECT FLOOR(12.77777333) AS RESULTADO;
SELECT RAND() AS RESULTADO;
SELECT NUMERO, QUANTIDADE, PRECO, TRUNCATE(QUANTIDADE * PRECO,2) AS FATURAMNETO FROM itens_notas_fiscais;