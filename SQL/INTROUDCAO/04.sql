/*BANCO.NOME_DA_TABELA*/
CREATE TABLE SUCOS.tbCliente2(
/*CRIAR CAMPOS*/
CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(50),
CEP VARCHAR(8),
IDADE SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
/*'LIMITE CREDITO' PARA USAR ESPAÇO VAI ENTRE ASPAS SIMPLES*/
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT(1)
);

CREATE TABLE SUCOS.tbCliente3(
/*CRIAR CAMPOS*/
CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(50),
CEP VARCHAR(8),
IDADE SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
/*'LIMITE CREDITO' PARA USAR ESPAÇO VAI ENTRE ASPAS SIMPLES*/
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT(1)
);

DROP TABLE SUCOS.TBCLIENTE3;