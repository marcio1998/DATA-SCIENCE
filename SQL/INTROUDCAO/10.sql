USE SUCOS;

SELECT * FROM tbcliente;

DESCRIBE tbcliente;

ALTER TABLE tbcliente ADD PRIMARY KEY(CPF);

ALTER TABLE tbcliente ADD COLUMN (DATA_NASCIMENTO DATE);

INSERT INTO tbcliente (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, 
LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO) VALUES (
'12345678988', 'João Da Silva', 'Rua projetada A número 10', '', 'Vila Romã', 'Caratinga', 'Amazonas',
 '222222', 30, 'M', 10000.00, 2000, 0, '1991-10-05');
 
 SELECT * FROM tbcliente;
 
 ALTER TABLE tabela_vendedores ADD COLUMN (DATA_ADMISSAO DATE);
 
 ALTER TABLE tabela_vendedores ADD COLUMN (DE_FERIAS BIT(1));
 
 ALTER TABLE tabela_vendedores ADD PRIMARY KEY(MATRICULA);
 
 UPDATE tabela_vendedores SET DATA_ADMISSAO = '2014-08-15', DE_FERIAS = 0 WHERE MATRICULA = '00235';
 
 SELECT * FROM tabela_vendedores;
 
 UPDATE tabela_vendedores SET DATA_ADMISSAO = '2013-09-17', DE_FERIAS = 1 WHERE MATRICULA = '00236';
 
 INSERT INTO tabela_vendedores(
 MATRICULA, NOME, PORCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS) VALUES(
 '00237', 'Roberta Martins', 11, '2017-03-18', 1);
 
 INSERT INTO tabela_vendedores(
 MATRICULA, NOME, PORCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS) VALUES(
 '00238', 'Péricles Alves', 11, '2016-08-21', 0);
 
 ALTER TABLE tabela_vendedores RENAME COLUMN PORCENTUAL_COMISSAO TO PERCENTUAL_COMISSAO;
 
 SELECT * FROM tabela_vendedores;
