USE vendas_sucos;
CREATE TABLE tabela_de_vendas(
	NUMERO VARCHAR(5) NOT NULL,
    DATA_VENDA DATE NULL,
    CPF VARCHAR(11) NOT NULL,
    MATRICULA VARCHAR(5) NOT NULL,
    IMPOSTO FLOAT NULL,
    PRIMARY KEY(NUMERO),
    CONSTRAINT FK_CLIENTES FOREIGN KEY (CPF) REFERENCES clientes(CPF)
);


ALTER TABLE TABELA_DE_VENDAS ADD CONSTRAINT FK_VENDEDORES FOREIGN KEY (MATRICULA) REFERENCES VENDEDORES(MATRICULA);