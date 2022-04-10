USE sucos;

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

select * from tbproduto;

UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46 WHERE PRODUTO = 544931;

select * from tbproduto;

UPDATE tabela_vendedores SET PORCENTUAL_COMISSAO = 11 WHERE MATRICULA = '00236';
UPDATE tabela_vendedores SET NOME = 'José Geraldo Da Fonseca Júnior' WHERE MATRICULA = '00233';

SELECT * FROM tabela_vendedores;