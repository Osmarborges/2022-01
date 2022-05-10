DROP TABLE IF EXISTS CIDADE_TEM_RELEVO, RELEVO, CLIMA, CIDADE, UF;


CREATE TABLE UF
(

id INTEGER NOT NULL AUTO_INCREMENT,
   
nome VARCHAR (100) NOT NULL,
   
    UNIQUE (nome),
   
    PRIMARY KEY (id)
   
);

INSERT INTO UF (nome)

VALUES
('Paraná'),

            ('Santa Catarina'),
           
            ('Rio Grande do Sul'),
           
            ('Mato Grosso do Sul'),
           
            ('Mato Grosso'),
           
            ('Goias');
   
SELECT * FROM UF ORDER BY nome;

CREATE TABLE CIDADE
(

nome VARCHAR (80),
   
    uf_id INTEGER,

    PRIMARY KEY (nome),
   
    FOREIGN KEY (uf_id) REFERENCES UF (id)
   
);

INSERT INTO CIDADE

    VALUES
('Campo Mourão', 1),
           
            ('Engenheiro Beltrão', 2);
           
SELECT * FROM CIDADE ORDER BY nome;

CREATE TABLE CLIMA
(

nome_cidade VARCHAR (80),

    data_coletrelevorelevoa DATE,
   
    temp_max INTEGER,
   
    temp_min INTEGER,
   
    precipitacao REAL,
   
    PRIMARY KEY (nome_cidade, data_coleta),
   
    FOREIGN KEY (nome_cidade) REFERENCES CIDADE (nome)

);

INSERT INTO CLIMA VALUES ('Campo Mourão', '2022-03-29', 32, 15, 2.5);

SELECT * FROM CLIMA;

CREATE TABLE RELEVO
(

nome VARCHAR (80),
   
    id INTEGER AUTO_INCREMENT,

PRIMARY KEY (id)

);

INSERT INTO RELEVO (nome) VALUES

                                ('Planalto'),
                               
('Montanha'),
                               
                                ('Planices');

SELECT * FROM RELEVO;

CREATE TABLE CIDADE_TEM_RELEVO
(

nome_cidade VARCHAR (80),   
    id_relevo INTEGER,   
    PRIMARY KEY (nome_cidade, id_relevo),   
    FOREIGN KEY (nome_cidade) REFERENCES CIDADE (nome),   
    FOREIGN KEY (id_relevo) REFERENCES RELEVO (id)   
);
DROP TABLE IF EXISTS FUNCIONARIO_HORISTA;
create table FUNCIONARIO(
CPF INTEGER,
NOME VARCHAR(100),
VAGA INTEGER,
PRIMARY KEY (CPF) ON DELETE CASCADE ON UPDATE cascade
);

create table FUNCIONARIO_HORISTA(
	CPF INTEGER,
	SALARIO_HORA DECIMAL(10,2),
	PRIMARY KEY (CPF),
	FOREIGN KEY (CPF) REFERENCES FUNCIONARIO(CPF)
);
create table FUNCIONARIO_CONTRATADO(
CPF INTEGER,
ID_FOLHA_PAGAMENTO INTEGER,
PRIMARY KEY (CPF),
FOREIGN KEY (CPF) REFERENCES FUNCIONARIO(CPF) ON DELETE CASCADE ON UPDATE cascade
);
INSERT FUNCIONARIO VALUES (999, 'DOUGLAS ', 1);
INSERT FUNCIONARIO VALUES (9499, 'ANDRE ', 1);
INSERT FUNCIONARIO VALUES (9499, 'JAO CIANORTE ', 2);
INSERT FUNCIONARIO_CONTRATADO VALUES (9919, 50,'DOUGLAS ', 1);
INSERT FUNCIONARIO_HORISTA VALUES (979, 100.00,50);
UPDATE FUNCIONARIO SET CPF = 444 WHERE CPF = 999;
DELETE FROM FUNCIONARIO WHERE CPF = 999; -- SO É VALIDO SE TIVER CASCADE SENAO TEM Q DAR DELETE NAS DUAS TABLE

INSERT INTO CIDADE_TEM_RELEVO VALUES('Campo Mourão', 3);
SELECT * FROM CIDADE_TEM_RELEVO;
