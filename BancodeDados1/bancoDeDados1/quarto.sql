-- create database clinica;
-- use clinica;
drop table if exists medico, paciente, especialidade, quarto, medico_trata_paciente;
create table medico(
	crm varchar (20),
    nome varchar (60),
    salario decimal,
    primary key (crm)
);
create table paciente(
	cpf char(11),
    nome varchar(50),
    rg varchar (15),
    primary key (cpf)
);

create table especialidade(
	cpf char (11),
    nome varchar (50),
    rg varchar (15),
    primary key (nome)
);

create table quarto(
	num integer,
    andar integer,
    primary key (num)
);

create table medico_trata_paciente(
	crm varchar (20),
    cpf char (11),
    primary key (crm, cpf),
    foreign key (crm) references medico(crm),
    foreign key (cpf) references paciente(cpf)
);
create table medico_responsavel_paciente(
	crm varchar (20),
    cpf char (11),
    horario time,
    primary key (crm, cpf),
    foreign key (crm) references medico(crm),
    foreign key (cpf) references paciente(cpf)
);
create table medico_formacao_especialidade(
	crm varchar (20),
    nome varchar (50),
    primary key (crm, nome),
    foreign key (crm) references medico(crm),
    
);
-- create table medico_comtratado_especialidade();
-- create table paciente_internado_quarto();


	