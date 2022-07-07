#use p3;
drop table if exists cliente, vaga, associado, ESTACIONAGEM;
CREATE TABLE CLIENTE(
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    sexo CHAR(1)
);
CREATE TABLE VAGA(
    id INTEGER PRIMARY KEY,
    status CHAR(20)
);
CREATE TABLE ASSOCIADO(
    cpf CHAR(11)NOT NULL,
    id_vaga INTEGER NOT NULL,
    PRIMARY KEY(cpf, id_vaga),
    FOREIGN KEY(cpf) REFERENCES CLIENTE(cpf),
    FOREIGN KEY(id_vaga) REFERENCES VAGA(id)
);
CREATE TABLE ESTACIONAGEM(
    id INTEGER PRIMARY KEY,
    dataEntrada DATE,
    horaEntrada TIME,
    dataSaida DATE,
    horaSaida TIME,
    placa CHAR(8),
    custo FLOAT,
    cpf CHAR(11),
    id_vaga INTEGER,
    FOREIGN KEY(id_vaga) REFERENCES VAGA(id),
    FOREIGN KEY(cpf) REFERENCES CLIENTE(cpf)
);

insert into CLIENTE (cpf, nome, sexo) values (1, 'Veronike', 'F');
insert into CLIENTE (cpf, nome, sexo) values (2, 'Jerald', 'F');
insert into CLIENTE (cpf, nome, sexo) values (3, 'Bartolomeo', 'F');
insert into CLIENTE (cpf, nome, sexo) values (4, 'Cherilyn', 'F');
insert into CLIENTE (cpf, nome, sexo) values (5, 'D''arcy', 'M');
insert into CLIENTE (cpf, nome, sexo) values (6, 'Zulema', 'F');
insert into CLIENTE (cpf, nome, sexo) values (7, 'Myles', 'F');
insert into CLIENTE (cpf, nome, sexo) values (8, 'Hobey', 'M');
insert into CLIENTE (cpf, nome, sexo) values (9, 'Brett', 'F');
insert into CLIENTE (cpf, nome, sexo) values (10, 'Rycca', 'F');
insert into CLIENTE (cpf, nome, sexo) values (11, 'Renate', 'M');
insert into CLIENTE (cpf, nome, sexo) values (12, 'Ebeneser', 'F');
insert into CLIENTE (cpf, nome, sexo) values (13, 'Austine', 'M');
insert into CLIENTE (cpf, nome, sexo) values (14, 'Frayda', 'F');
insert into CLIENTE (cpf, nome, sexo) values (15, 'Karon', 'F');
insert into CLIENTE (cpf, nome, sexo) values (16, 'Rube', 'F');
insert into CLIENTE (cpf, nome, sexo) values (17, 'Bord', 'F');
insert into CLIENTE (cpf, nome, sexo) values (18, 'Terrijo', 'M');
insert into CLIENTE (cpf, nome, sexo) values (19, 'Torrin', 'F');
insert into CLIENTE (cpf, nome, sexo) values (20, 'Ebeneser', 'M');

insert into VAGA (id, status) values (1, 'CARRO');
insert into VAGA (id, status) values (2, 'CARRO');
insert into VAGA (id, status) values (3, 'CARRO');
insert into VAGA (id, status) values (4, 'MOTO');
insert into VAGA (id, status) values (5, 'MOTO');
insert into VAGA (id, status) values (6, 'CARRO');
insert into VAGA (id, status) values (7, 'MOTO');
insert into VAGA (id, status) values (8, 'CARRO');
insert into VAGA (id, status) values (9, 'MOTO');
insert into VAGA (id, status) values (10, 'CARRO');
insert into VAGA (id, status) values (11, 'CARRO');
insert into VAGA (id, status) values (12, 'CARRO');
insert into VAGA (id, status) values (13, 'CARRO');
insert into VAGA (id, status) values (14, 'MOTO');
insert into VAGA (id, status) values (15, 'CARRO');
insert into VAGA (id, status) values (16, 'MOTO');
insert into VAGA (id, status) values (17, 'MOTO');
insert into VAGA (id, status) values (18, 'CARRO');
insert into VAGA (id, status) values (19, 'MOTO');
insert into VAGA (id, status) values (20, 'CARRO');

insert into ASSOCIADO (cpf, id_vaga) values (1, 1);
insert into ASSOCIADO (cpf, id_vaga) values (2, 2);
insert into ASSOCIADO (cpf, id_vaga) values (3, 3);
insert into ASSOCIADO (cpf, id_vaga) values (4, 4);
insert into ASSOCIADO (cpf, id_vaga) values (5, 5);
insert into ASSOCIADO (cpf, id_vaga) values (6, 6);
insert into ASSOCIADO (cpf, id_vaga) values (7, 7);
insert into ASSOCIADO (cpf, id_vaga) values (8, 8);
insert into ASSOCIADO (cpf, id_vaga) values (9, 9);
insert into ASSOCIADO (cpf, id_vaga) values (10, 10);

insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (1, '2022-03-03', '18:00:29', '2022-05-12', '11:20:43', '03834238', 90.94, 14, 12);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (2, '2022-03-28', '12:13:23', '2021-12-09', '8:47:57', '16089889', 60.19, 3, 3);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (3, '2022-01-02', '11:12:28', '2021-12-04', '11:16:26', '65470520', 73.11, 11, 17);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (4, '2022-01-19', '0:36:28', '2021-10-07', '1:31:46', '03401282', 88.92, 16, 4);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (5, '2021-09-04', '8:00:53', '2021-12-12', '2:01:04', '79797396', 44.12, 15, 14);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (6, '2022-05-15', '19:08:56', '2021-08-21', '5:17:47', '21986026', 68.88, 15, 8);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (7, '2021-07-31', '14:00:55', '2022-03-17', '2:35:27', '65853494', 39.79, 4, 17);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (8, '2021-11-19', '10:45:57', '2021-07-11', '11:14:41', '59156858', 65.08, 5, 2);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (9, '2022-04-25', '5:42:02', '2022-03-15', '23:34:17', '01761351', 71.35, 6, 13);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (10, '2022-01-16', '5:53:31', '2021-12-07', '16:26:49', '67509166', 68.66, 9, 7);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (11, '2021-11-14', '1:12:05', '2021-10-19', '6:57:10', '24538645', 78.01, 14, 12);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (12, '2021-08-17', '12:44:40', '2021-12-12', '23:46:56', '23442282', 54.58, 5, 5);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (13, '2021-12-19', '0:47:54', '2022-06-23', '8:00:07', '26300852', 22.28, 8, 8);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (14, '2022-02-07', '1:19:35', '2021-10-13', '7:24:14', '69652247', 34.47, 6, 18);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (15, '2022-04-09', '0:26:58', '2021-07-19', '14:13:11', '52310758', 87.08, 5, 11);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (16, '2022-06-06', '8:37:55', '2021-08-28', '11:59:52', '85873768', 49.01, 9, 10);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (17, '2022-03-22', '8:22:51', '2021-12-30', '5:19:09', '97982573', 6.81, 3, 3);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (18, '2022-02-09', '5:12:53', '2021-12-04', '22:45:15', '53675876', 90.73, 9, 11);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (19, '2022-01-12', '23:35:52', '2022-03-08', '6:50:51', '77404748', 42.93, 12, 2);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (20, '2021-07-07', '4:38:19', '2021-12-01', '17:43:56', '84662487', 62.24, 17, 17);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (21, '2022-04-11', '20:31:40', '2022-04-14', '5:30:17', '22176259', 44.9, 9, 5);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (22, '2022-01-13', '14:41:37', '2022-01-21', '15:39:15', '51968321', 39.06, 12, 5);
insert into ESTACIONAGEM (id, dataentrada, horaentrada, datasaida, horasaida, placa, custo, cpf, id_vaga) values (23, '2022-05-14', '18:24:17', '2021-08-29', '5:43:59', '73717283', 16.32, 13, 13);#[1.0] - Escreva em SQL uma consulta que liste todos as vagas que são associados à clientes do sexo feminino.
select vaga.id from vaga, associado, cliente
where cliente.cpf = associado.cpf and
 cliente.sexo = 'F' ;
#[1.5] - Escreva em SQL uma consulta que selecione todas as vagas (sem repetição) que tiveram estacionagem com pernoite (dataEntrada < dataSaida) no mês de fevereiro de 2020.
select distinct vaga.id from vaga, estacionagem
where dataEntrada < dataSaida and
month(dataEntrada) = 1 and year (dataEntrada) = 2022 ;
#[1.5] - Escreva em SQL uma consulta que selecione o id da vaga e a quantidade de estacionagem.
select count(vaga.id) from vaga natural join estacionagem;
select count(vaga.id), vaga.id from vaga , estacionagem
where vaga.id = estacionagem.id_vaga
group by vaga.id;

#[2.0] - Escreva em SQL uma consulta que determine quais clientes estacionaram carros, mas não estacionaram motos em março de 2020.
select cliente.nome, vaga.status from cliente, estacionagem, vaga
where cliente.cpf = estacionagem.cpf and
vaga.id = estacionagem.id_vaga and
#month(dataEntrada) = 1 and
year (dataEntrada) = 2022 and
 vaga.status = 'CARRO' and 
 cliente.cpf NOT IN(select cli.cpf from cliente as cli , estacionagem as est, vaga as v
					where cli.cpf = est.cpf and
                   # month(dataEntrada) = 1 and 
                    year (dataEntrada) = 2022 and
                    v.id = est.id_vaga and 
                    v.status = 'MOTO');
#[2.0] - Escreva em SQL uma consulta que selecione o nome dos clientes que estacionaram motos mais do que 10 vezes em 2020.
select cliente.nome,vaga.status from cliente, estacionagem, vaga
where cliente.cpf = estacionagem.cpf and
vaga.id = estacionagem.id_vaga and
year (dataEntrada) = 2022 and
 vaga.status = 'MOTO'
 group by cliente.nome > 10;
#[2.0] - Escreva em SQL uma consulta que liste os clientes que já estacionaram motos e carros.*/

select cliente.nome, vaga.status from cliente, estacionagem, vaga
where cliente.cpf = estacionagem.cpf and
vaga.id = estacionagem.id_vaga and vaga.status = 'CARRO' 
union
(select cli.nome, v.status from cliente as cli , estacionagem as est, vaga as v
					where cli.cpf = est.cpf and               
                    v.id = est.id_vaga and 
                    v.status = 'MOTO' ) order by nome;

