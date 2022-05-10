 -- CREATE DATABASE PIZZARIA;
 -- USE  PIZZARIA;
DROP TABLE IF exists PIZZA_TEM_TAMANHO, TAMANHO, PIZZA, PEDIDO_TEM_PIZZA_TAMANHO, CLIENTE, BAIRRO, FUNCIONARIO_ATENDENTE, FUNCIONARIO_ENTREGADOR, FUNCIONARIO;
CREATE TABLE TAMANHO(
	DESCRICAO varchar(100),
    primary KEY (DESCRICAO) 
);
CREATE TABLE PIZZA(
	NUM INTEGER,
    NOME varchar(100),
    INGREDIENTES VARCHAR (100),
    primary key (NUM)
    );
CREATE TABLE PIZZA_TEM_TAMANHO(
	NUM_PIZZA INTEGER,
	NOME_PIZZA VARCHAR(30),
	TAMANHO varchar(50),
	PRIMARY KEY (NUM_PIZZA, TAMANHO),
	foreign key (NUM_PIZZA) REFERENCES PIZZA(NUM),
	foreign key (TAMANHO) REFERENCES TAMANHO(DESCRICAO)
);

CREATE TABLE PEDIDO_TEM_PIZZA_TAMANHO(
	NUM INTEGER,
    DATAS DATE,
    ENDERECO varchar(100),
    primary key (NUM)    
);
CREATE TABLE CLIENTE(
	TELEFONE INTEGER,
    NOME VARCHAR (100),
    primary key (TELEFONE)
);
CREATE TABLE BAIRRO(
	NOME VARCHAR(100),
    TEMPO INTEGER,
    primary key (NOME)
);
CREATE TABLE FUNCIONARIO(
	ID INTEGER,
    PRIMARY key (ID)
);
CREATE TABLE FUNCIONARIO_ATENDENTE(
	ID_ATENDENTE INTEGER,
    foreign key (ID_ATENDENTE) REFERENCES FUNCIONARIO(ID)
);
CREATE TABLE FUNCIONARIO_ENTREGADOR(
	TELEFONE INTEGER,
    foreign key (TELEFONE) REFERENCES FUNCIONARIO(ID)
);
CREATE TABLE PEDIDO(
	NUM INTEGER,
    DATAS DATE, 
    ENDERECO VARCHAR (100),
    primary key (NUM),
    foreign key 
);
