
INSERT INTO CLIENTE(ID_CLI, NOME, SOBRENOME) VALUES 
(1,'Miguel','Falabela'),(2,'Arthur ','Pendragon'),(3,'Gael','Papel'),(4,'Heitor','Reitor'),
(5,'Helena','Troia'),(6,'Gabriel','Pensador'),(7,'Theo','Bule'),(8,'Davi ','Golias'),
(9,'Alice','Maravilha'),(10,'Laura','Loira'),
(100,'marco','alves'),(101,'ale ','sales'),(102,'clau','claudio'),
(103,'Heitor','riviera'),(104,'jose','pedro'),(105,'josia','Bule'),(106,'Davi ','silva'),
(107,'Alice','wisky'),(108,'jane','pampas'),(109,'joao','feijao');

INSERT INTO CLIENTE_JURIDICO(ID_CLI, RAZAO_SOCIAL, EMAIL) VALUES
 (100,'butequim comercio ltda','butequim@gmail.com'),(101,'churrascaria ale ltda ','alechurrasco@gmail.com'),(102,'claubreija ltda','claubreija@gmail.com'),
 (103,'vanilla lanches ltda','vanilla@gmail.com'),(104,'pinaculo burguer','pinaculo@gmail.com'),(105,'barbariam ltda','barbariam@gmail.com'),(106,'pub night ','nightpub@gmail.com'),
 (107,'lanches wisky ltda','lancheswisky@gamil.com'),(108,'pubclub ltda','pubclub@gmail.com'),(109,'pubs ltda','pubs@gmail.com');

INSERT INTO CLIENTE_FISICO(ID_CLI, CPF, RG) VALUES 
(1,987654321,103009901),(2,987654321,103009902),(3,987654323,103009903),(4,987654324,103009904),
(5,987654325,103009905),(6,987654326,103009906),(7,987654327,103009907),(8,987654328,103009908),
(9,987654329,103009909),(10,987654310,103009910);

INSERT INTO CLIENTE_TEM_TELEFONE(ID_CLI,COD_PAIS, DDD, NRO) VALUES 
(1,55,44,35250001),(2,55,44,35250002),(3,55,44,35250003),(4,55,44,35250004),(5,55,44,35250005),
(6,55,44,35250006),(7,55,44,99980007),(8,55,44,35250008),(9,55,44,99980009),(10,55,44,99980010),
(100,55,44,99980010),(101,55,44,99980010),(102,55,44,99980010),(103,55,44,99980010),(104,55,44,99980010),
(105,55,44,99980010),(106,55,44,99980010),(107,55,44,99980010),(109,55,44,99980010),(108,55,44,99980010);

INSERT INTO FORNECEDOR (CNPJ, NOME, EMAIL) VALUES
(1377813,'Icebox chopeiras','icebox@gmal.com'),
(277813 ,'ikej'            ,'ikej@gmal.com'  ),
(3377813,'Naja chopeiras'  ,'Naja@gmal.com'  ),
(4377813,'Memo chopeiras'  ,'Memo@gmal.com'  ),
(5377813,'Hidrantex'       ,'Hidrantex@gmal.com'),
(6377813,'Zzojet'          ,'Zzojet@gmal.com'),
(7377813,'Vix'             ,'Vix@gmal.com'   ),
(8377813,'Colina'          ,'colinachopp@gmal.com'),
(9377813,'Beercoolers'     ,'Beercoolers@gmal.com'),
(1077813,'Lassberg'        ,'Lassberg@gmal.com');

INSERT INTO FORNECEDOR_TEM_TELEFONE(CNPJ,COD_PAIS, DDD, NRO) VALUES 
(1377813,55,44,99980010),(277813, 55,44,99980010),(3377813,55,43,99980010),
(4377813,55,44,99980010),(5377813,55,44,99980010),(6377813,55,44,99980010),
(7377813,55,44,99980010),(8377813,55,44,99980010),(9377813,55,44,99980010),
(1077813,55,44,99980010);

INSERT INTO ENDERECO(ID, ID_CLI, BAIRRO, RUA, NRO, CIDADE,ESTADO) VALUES 
(1,1  ,'tropical','sabia'			    ,11 ,'campo mourão','paraná'),
(1,2  ,'condor'  ,'trevo'			    ,102,'campo mourão','paraná'),
(1,3  ,'campos'  ,'cinco'			    ,58 ,'campo mourão','paraná'),
(1,4  ,'tropical','sabia' 			    ,29 ,'campo mourão','paraná'),
(1,5  ,'centro'  ,'getulio'			    ,11 ,'campo mourão','paraná'),
(1,6  ,'centro'  ,'capitão indio'	    ,20 ,'campo mourão','paraná'),
(1,7  ,'tropical','curio'			    ,100,'campo mourão','paraná'),
(1,8  ,'campele' ,'das flores'		    ,103,'campo mourão','paraná'),
(1,9  ,'campele' ,'ipe'				    ,11 ,'campo mourão','paraná'),
(1,10 ,'centro'  ,'manoel'              ,11 ,'campo mourão','paraná'),
(1,100,'centro'  ,'getulio'             ,23 ,'campo mourão','paraná'),
(1,101,'tropical','corruira'            ,40 ,'campo mourão','paraná'),
(1,102,'lagos'   ,'um'                  ,50 ,'campo mourão','paraná'),
(1,103,'lagos'   ,'dois'                ,75 ,'campo mourão','paraná'),
(1,104,'centro'  ,'brasil'			    ,30 ,'campo mourão','paraná'),
(1,105,'centro'  ,'brasil'			    ,60 ,'campo mourão','paraná'),
(1,106,'urupes'  ,'comendador'		    ,11 ,'campo mourão','paraná'),
(1,107,'tropical','sabia'   		    ,21 ,'campo mourão','paraná'),
(1,108,'centro'  ,'Casemiro Radominski' ,946,'Peabiru'     ,'paraná'),
(1,109,'centro'  ,'Raposo Taváres'	    ,110,'peabiru'	   ,'paraná');

INSERT INTO FUNCIONARIO (CRACHA, NOME, ADMISSAO, DEMISSAO) VALUES
(10,'IDAIR PERA', '2022/01/22',null),
(11,'JORGE PERA', '2022/01/22',null),
(12,'JIRAIA MACABRA', '2022/01/22',null),
(13,'SALLY LEE', '2022/01/22',null),
(14,'JOAO CISMADO', '2022/01/22',null),
(15,'RODISNEY SILVA', '2022/01/22',null),
(16,'PEDRO ESCARPA', '2022/01/22',null),
(17,'JORGE LUIS', '2022/01/22',null),
(18,'PEDRO DE LARA', '2022/01/22',null),
(19,'COLLOR DE MELLO', '2022/01/22',null),
(20,'DIDI MOCO', '2022/01/22',null),
(21,'ZACARIAS BRANDON', '2022/01/22',null),
(22,'JORGE LUCAS', '2022/01/22',null),
(23,'WILLIAN JOSE', '2022/01/22',null),
(24,'FAUSTO SILAS', '2022/01/22',null),
(25,'MORGANA FREE', '2022/01/22',null),
(26,'ALCEU INVALIDO', '2022/01/22',null),
(27,'ALCEU DISPOR', '2022/01/22',null),
(28,'TOMAS TURBANTE', '2022/01/22',null),
(29,'ANDERSON SILVA', '2022/01/22',null);

INSERT INTO FUNC_ENTREGADOR (CRACHA, NRO_HABILITACAO, CAT_HABILITACAO, STATS) VALUES
(10, 95162384,'AB','LIVRE'),(11, 95162384,'A','LIVRE'),
(12, 95162384,'B','LIVRE'),(13, 95162384,'AC','LIVRE'),
(14, 95162384,'C','LIVRE'),(15, 95162384,'AD','LIVRE'),
(16, 95162384,'AE','LIVRE'),(17, 95162384,'B','LIVRE'),
(18, 95162384,'D','LIVRE'),(19, 95162384,'AB','LIVRE');

INSERT INTO FUNC_VENDAS (CRACHA, COMISSAO_PORCENT, SALARIO, EMAIL) VALUES
(20,3,1900,'ddmoco@gmail.com'),(21,3,1900,'zacbrandon@gmail.com'),
(22,3,1900,'jglucas@gmail.com'),(23,3,1900,'wjose@gmail.com'),
(24,3,1900,'fsilas@gmail.com'),(25,3,1900,'mfree@gmail.com'),
(26,3,1900,'ainvalido@gmail.com'),(27,3,1900,'adispor@gmail.com'),
(28,3,1900,'tturbante@gmail.com'),(29,3,1900,'asilva@gmail.com');

INSERT INTO FUNCIONARIO_TEM_TELEFONE(CRACHA,COD_PAIS, DDD, NRO) VALUES 
(10,55,44,99980010),(11,55,44,99980010),(12,55,43,99980010),
(13,55,44,99980010),(14,55,44,99980010),(15,55,44,99980010),
(16,55,44,99980010),(17,55,44,99980010),(18,55,44,99980010),
(19,55,44,99980010),(20,55,44,99980010),(21,55,44,99980010),
(22,55,43,99980010),(23,55,44,99980010),(24,55,44,99980010),
(25,55,44,99980010),(26,55,44,99980010),(27,55,44,99980010),
(28,55,44,99980010),(29,55,44,99980010);

INSERT INTO PRODUTO(ID_PROD,STATS, MARCA, PRECO) VALUES 
(1,'LIVRE', 'MEMO', 4299),(2,'LIVRE', 'IKEG', 4299),(3,'LIVRE', 'MEMO', 4299),
(4,'LIVRE', 'MEMO', 4299),(5,'LIVRE', 'MEMO', 4299),(6,'LIVRE', 'MEMO', 4299),
(7,'LIVRE', 'MEMO', 4299),(8,'LIVRE', 'MEMO', 4299),(9,'LIVRE', 'MEMO', 4299),
(10,'LIVRE', 'MEMO', 4299),(100,'LIVRE', 'IKEG', 450),(101,'LIVRE', 'IKEG', 500),
(102,'LIVRE', 'IKEG', 650),(103,'LIVRE', 'IKEG', 800),(104,'LIVRE', 'IKEG', 250),
(105,'LIVRE', 'IKEG', 250),(106,'LIVRE', 'IKEG', 450),(107,'LIVRE', 'IKEG', 500),
(108,'LIVRE', 'IKEG', 650),(109,'LIVRE', 'IKEG', 800),(200,'LIVRE', 'IKEG', 530),
(201,'LIVRE', 'IKEG', 530),(202,'LIVRE', 'IKEG', 530),(203,'LIVRE', 'MEMO', 530),
(204,'LIVRE', 'MEMO', 617),(205,'LIVRE', 'MEMO', 617),(206,'LIVRE', 'MEMO', 617),
(207,'LIVRE', 'MEMO', 617),(208,'LIVRE', 'MEMO', 4299),(209,'LIVRE', 'IKEG', 378);

INSERT INTO CHOPP(TIPO_DESCRICAO, VALOR_LITRO, VALIDADE) VALUES 
('PILSEN',7.50,'2022/06/30'),('LAGER',9.50,'2022/06/30'),
('India Pale Ale',13.50,'2022/06/30'),('AMARULA',10,'2022/06/30'),
('VINHO',11,'2022/06/30'),('LAGER Premium',9.90,'2022/06/30'),
('Stout',10,'2022/06/30'),('Sour',11,'2022/06/30'),
('Wild',11.5,'2022/06/30'),('DUM Grand Cru',7.50,'2022/06/30');

INSERT INTO PRODUTO_BARRIL(ID_PROD, DIMENSOES, CAPACIDADE, PRESSAO_MAX, TIPO_DESCRICAO) VALUES 
(100, '270 X 400', 15, 2, 'PILSEN'), (101,'270 X 500',20,2, 'LAGER' ),
(102, '408 X 370', 30, 2, 'PILSEN'), (103,'408 X 540',50,2, 'PILSEN'),
(104, '175 X 485', 10, 2, 'VINHO') ,  (105,'175 X 485',10,3, 'Stout' ),
(106, '270 X 400', 15, 3, 'AMARULA'),(107,'270 X 500',20,3, 'PILSEN'),
(108, '365 X 395', 30, 3, 'LAGER'),  (109,'408 X 540',50,3, 'PILSEN');

INSERT INTO PRODUTO_CILINDRO(ID_PROD,COR, PESO, PRESSAO_MAX) VALUES 
(200,'Alumínio',2.3,124),
(201,'Alumínio',2.3,124),
(202,'Alumínio',2.3,124),
(203,'Preto',2.3,124),
(204,'Preto',6,124),
(205,'Preto',6,124),
(206,'Preto',6,124),
(207,'Cinza',6,124),
(208,'Cinza',6,124),
(209,'Cinza',0.9,124);

INSERT INTO PRODUTO_MAQUINA(ID_PROD,VOLTAGEM, VAZAO_HORA, NRO_TORNEIRAS) VALUES 
(1,110,55,1),(2,220,70,2),(3,110,55,1),(4,110,55,1),(5,220,85,3),
(6,110,70,2),(7,110,55,1),(8,110,55,1),(9,220,55,1),(10,110,55,1);

INSERT INTO PEDIDO(ID_PED,QUANTIDADE, DATA_PED,PAGAMENTO,CRACHA,ID_CLI) VALUES 
(1,80,'2002/06/20', 'CARTAO CREDITO',20,5),
(2,30,'2002/06/21','DINHEIRO'		,24,100),
(3,30,'2002/06/20', 'CARTAO DEBITO' ,20,1),
(4,80,'2002/06/20', 'DINHEIRO'      ,20,9),
(5,50,'2002/06/20', 'DINHEIRO'      ,22,6),
(6,80,'2002/06/20', 'CARTAO CREDITO',20,8),
(7,100,'2002/06/22' ,'DINHEIRO'     ,20,108),
(8,20,'2002/06/20' ,'DINHEIRO'		,21,105),
(9,80,'2002/06/21' ,'DINHEIRO'		,20,103),
(10,50,'2002/06/25' ,'DINHEIRO'		,20,104);

INSERT INTO PEDIDO_TEM_PRODUTO(ID_PROD, ID_PED) VALUES 
(1,1),(102,1),(200,1),(103,1),
(2,2),(102,2),(201,2),
(3,3),(108,3),(202,3),
(4,4),(102,4),(203,4),(103,4),
(5,5),(204,5),(103,5),
(6,6),(102,6),(205,6),(109,6),
(7,7),(109,7),(206,7),(103,7),
(8,8),(104,8),(207,8),(105,8),
(9,9),(102,9),(208,9),(103,9),
(8,10),(207,10),(103,10);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO(CNPJ,ID_PROD) VALUES 
(4377813,1),(4377813,3),(4377813,4),(4377813,5),(4377813,6),(4377813,7),(4377813,8),(4377813,9),(4377813,10),
(4377813,203),(4377813,204),(4377813,205),(4377813,206),(4377813,207),(4377813,208),
(277813,2),(277813,100),(277813,101),(277813,102),(277813,103),(277813,104),(277813,105),(277813,106),(277813,107),(277813,108),(277813,109);