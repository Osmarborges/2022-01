--  create database curso;
-- use curso;
drop table if exists cursos;
create table cursos(
	nome varchar(80),
    duracao real,
    primary key (nome)
);
create table alunos(
	id integer,
    nome varchar (50),
    email varchar (30),
    primary key (id)
);
create table departamentos(
	cod integer,
    detalhes varchar(50),
    primary key (cod)
    );
create table disciplinas(
cod integer,
stats boolean,
primary key (cod)
);
create table pre_req_disciplinas(
	disciplina_pre_req VARCHAR (80),   
    id_relevo INTEGER,   
    PRIMARY KEY (nome_cidade, id_relevo),   
    FOREIGN KEY (nome_cidade) REFERENCES CIDADE (nome),   
    FOREIGN KEY (id_relevo) REFERENCES RELEVO (id)   
);
    
 
