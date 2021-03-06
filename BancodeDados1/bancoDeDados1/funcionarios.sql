create TABLE PROJETOS(
	ID_P INTEGER,
    INICIO DATE,
    ORCAMENTO DECIMAL,
    PRIMARY KEY (ID_P)
);
CREATE TABLE DEPARTAMENTOS(
	ID_D INTEGER,
    NOME VARCHAR(40),
    ORCAMENTO DECIMAL,
    PRIMARY KEY (ID_D)
);

CREATE TABLE FUNCIONARIOS(
		CPF CHAR(30),
        NOME CHAR(30),
        VAGA INTEGER,
        primary key(CPF)
);
CREATE TABLE FINANCIA (
	DESDE DATE,
    ID_PROJ INTEGER,
    ID_DEP INTEGER,
    PRIMARY KEY (ID_PROJ, ID_DEP),
FOREIGN KEY (ID_PROJ) REFERENCES PROJETOS(ID_P),
FOREIGN KEY (ID_DEP) REFERENCES DEPARTAMENTOS(ID_D)
);

CREATE TABLE MONITORA(
		 ID_DEP INTEGER,
         ID_PROJ INTEGER,
         CPF CHAR(30),
         primary key(ID_DEP, ID_PROJ, CPF),
         foreign key (ID_DEP, ID_PROJ) REFERENCES FINANCIA (ID_DEP, OD_PROJ),
         FOREIGN KEY (CPF) REFERENCES FUNCIONARIO(CPF)
);

