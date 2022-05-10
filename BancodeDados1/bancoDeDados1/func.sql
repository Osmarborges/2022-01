CREATE TABLE FUNCIONARIOS(
		CPF CHAR(30),
        NOME CHAR(30),
        VAGA INTEGER,
        primary key(CPF)
);

CREATE TABLE APOLICE(
		ID INTEGER,
        custo DECIMAL(10,2),
		cpf CHAR (11),
		PRIMARY KEY (cpf, id),
FOREIGN KEY (cpf) REFERENCES FUNCIONARIOS(cpf)  ON DELETE cascade 
											    on update cascade
);
CREATE TABLE DEPENDENTE(
	cpf char (11),
    id integer,
    NOME VARCHAR (30),
    IDADE INTEGER,
    primary key ( cpf, id, NOME),
    foreign key(cpf, id) references APOLICE(cpf, id) ON DELETE cascade 
													 on update cascade
);