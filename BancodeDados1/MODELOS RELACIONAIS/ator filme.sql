-- create database locadora;
-- use locadora;
drop table if exists ator , filme,ator_filme;
create table ator(
	nome_real varchar(50) primary key
);

create table filme (
	nome varchar(50),
    id integer primary key	
);
create table ator_filme(
	nome_real varchar(50),
    nome varchar(50),
    primary key (nome_real, nome),
    foreign key (nome_real) references ator(nome_real),
    foreign key (nome) references filme(nome)
);