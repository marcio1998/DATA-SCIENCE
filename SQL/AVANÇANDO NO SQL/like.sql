use sucos_vendas;
SELECT * FROM tabela_de_produtos WHERE SABOR LIKE ('%maça');
SELECT * FROM tabela_de_produtos WHERE SABOR LIKE ('%maça%') AND EMBALAGEM = 'PET';