drop table if exists testeA, testeB, testeC, testeD, testeZ, testeX, tem_XZ;
-- um para um
create table testeA( id integer,
					 nome char(30),
                     unique (id),
                     constraint testeA primary key (id)
);
create table testeB( cod integer,
					 dia char(30),
                     unique (cod),
                     constraint testeB primary key (cod)
);
-- um para n
create table testeC( cod_C integer,
					 nome char(30),
                     unique (cod_C ,nome),
                     constraint testeC primary key (cod_C)
);

create table testeD( cod_C integer,
					 nome_D char(30),
                     primary key (cod_C, nome_D),
                     foreign key (cod_C) references testeC(cod_C)
);
-- n para n
create table testeZ(id_Z integer primary key,
					nome_Z varchar(50) not null,
                    num integer not null,
                    idade integer not null
);

create table testeX(id_X integer primary key,
					nome_X varchar(50) not null,
                    num_X integer not null						
);
create table tem_XZ(id_Z integer,
					id_X integer,
                    primary key(id_Z,id_X),
                    foreign key(id_Z) references testeZ(id_Z),
                    foreign key(id_X) references testeX(id_X)
);