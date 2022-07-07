
#create database prova3;

use prova3;
/*
CREATE TABLE USUARIO(
 nome_usuario VARCHAR(255) PRIMARY KEY,
 ramal CHAR(4)
);

CREATE TABLE COMPUTADOR(
 id_computador INTEGER PRIMARY KEY,
 tipo VARCHAR(255),
 velocidade FLOAT,
 hd INTEGER,
 memoria_ram INTEGER
);

CREATE TABLE USUARIO_USA_COMPUTADOR(
 nome_usuario VARCHAR(255),
 id_computador INTEGER,
 PRIMARY KEY(nome_usuario, id_computador),
 FOREIGN KEY (nome_usuario) REFERENCES USUARIO(nome_usuario),
 FOREIGN KEY (id_computador) REFERENCES COMPUTADOR(id_computador)
);

CREATE TABLE SOFTWARE(
   id_software INTEGER PRIMARY KEY,
   nome VARCHAR(255),
   hd INTEGER,
   memoria_ram INTEGER
);

CREATE TABLE COMPUTADOR_TEM_SOFTWARE(
   id_computador INTEGER,
   id_software INTEGER,
   PRIMARY KEY(id_computador, id_software),
   FOREIGN KEY (id_computador) REFERENCES COMPUTADOR(id_computador),
   FOREIGN KEY (id_software) REFERENCES SOFTWARE(id_software)
);

*/
select * from computador;
select * from software;
select * from computador_tem_software;
#[1.0] - Escreva em SQL uma consulta que, caso o usuário tenha computador(es), liste o nome do usuário e o(s) tipo(s) de seu(s) computador(es) - repetições são permitidas.
select u.nome_usuario, c.tipo  from usuario u, computador c, usuario_usa_computador uuc 
  where u.nome_usuario = uuc.nome_usuario and c.id_computador = uuc.id_computador;
  
#[1.5] - Escreva em SQL uma consulta que liste o nome dos usuários, sem repetição, que tem pelo menos um computador que tenha instalado o software MySQL.
select distinct nome_usuario from usuario u, usuario_usa_computador uuc, computador c, software s,computador_tem_software cts
  where u.nome_usuario = uuc.nome_usuario and  c.id_computador = uuc.id_computador and
 uuc.id_computador = cts.id_computador and cts.id_software = s.id_sofware;
 
select * from computador c, computador_tem_software cts, software s ;

#[1.5] - Escreva em SQL uma consulta que forneça a quantidade de disco rígido utilizada em cada computador para os softwares instalados em cada uma deles.
select sum(s.hd), c.id_computador
from computador c, computador_tem_software cts, software s
  where c.id_computador = cts.id_computador and
  cts.id_software = s.id_software and
  s.hd = c.hd
  group by c.id_computador;
  
#[2.0] - Escreva em SQL uma consulta que forneça a relação dos softwares que não estão instalados em nenhum computador.
select * 
 from software s
  where s.id_software not in (select cts.id_software from computador_tem_software  as cts natural join computador);
  -- = s.id_software and cts.id_computador ;
  
#[2.0] - Escreva em SQL uma consulta que liste o nome dos usuários que possuem pelo menos 3 computadores.

select u.nome_usuario
from usuario u, usuario_usa_computador uuc, computador c
where u.nome_usuario = uuc.nome_usuario and
	  uuc.id_computador = c.id_computador
group by u.nome_usuario      
having count(c.id_computador) >= 3;    
#[2.0] - Escreva em ÁLGEBRA RELACIONAL uma consulta que liste os ids dos computares que estão sem usuários.

INSERT INTO `prova3`.`computador` (`id_computador`, `tipo`, `velocidade`, `hd`, `memoria_ram`) VALUES ('1', 'intel', '20.1', '80', '8');
INSERT INTO `prova3`.`computador` (`id_computador`, `tipo`, `velocidade`, `hd`, `memoria_ram`) VALUES ('2', 'amd', '3.1', '126', '4');
INSERT INTO `prova3`.`computador` (`id_computador`, `tipo`, `velocidade`, `hd`, `memoria_ram`) VALUES ('3', 'mips', '4.2', '256', '12');

INSERT INTO `prova3`.`software` (`id_software`, `nome`, `hd`, `memoria_ram`) VALUES ('1', 'delphi comp', '80', '8');
INSERT INTO `prova3`.`software` (`id_software`, `nome`, `hd`, `memoria_ram`) VALUES ('2', 'javali', '12', '4');
INSERT INTO `prova3`.`software` (`id_software`, `nome`, `hd`, `memoria_ram`) VALUES ('4', 'word', '32', '12');
