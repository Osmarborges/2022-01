DROP TABLE IF EXISTS CLIMA, CIDADE, UF,RELEVO;

CREATE TABLE UF(
id INTEGER NOT NULL AUTO_INCREMENT,   
nome VARCHAR (100) NOT NULL,   
    UNIQUE (nome),   
    PRIMARY KEY (id)   
);

INSERT INTO UF (nome) VALUES
('Paraná'),('Santa Catarina'), ('Rio Grande do Sul'), ('Mato Grosso do Sul'),('Mato Grosso'),('Goias');
   
SELECT * FROM UF ORDER BY nome;

CREATE TABLE CIDADE(
nome VARCHAR (80),
uf_id INTEGER,
    PRIMARY KEY (nome),
   FOREIGN KEY (uf_id) REFERENCES UF (id)
);

INSERT INTO CIDADE VALUES ('Campo Mourão', 1), ('Engenheiro Beltrão', 2);

CREATE TABLE CLIMA
(

nome_cidade VARCHAR (80),
    data_coleta DATE,
   
    temp_max INTEGER,
   
    temp_min INTEGER,
    precipitacao REAL,
   
    PRIMARY KEY (nome_cidade, data_coleta),   
    FOREIGN KEY (nome_cidade) REFERENCES CIDADE(nome)
);

CREATE TABLE RELEVO(
ID INTEGER auto_increment,
NOME VARCHAR(80),
PRIMARY KEY (ID)
);

CREATE TABLE CIDADE_TEM_RELEVO(
NOME_CIDADE VARCHAR(80),
primary key (NOME_CIDADE,ID_RELEVO)

INSERT INTO CLIMA VALUES ('Campo Mourão', '2022-03-29', 32, 15, 2.5);

SELECT * FROM CIDADE ORDER BY nome;