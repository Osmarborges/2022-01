use aeronave;
use a;
-- Selecione todos alunos que são menores do que 20 anos e são do nível 'JR'

-- Selecione os professores que são do departamento  68

-- Selecione os alunos que se matricularam em curso de 'Database Systems'

-- Selecione os nomes dos professores que ministraram algum curso na sala '20 AVW'

-- Selecione o nivel dos alunos (sem repetição) que cursaram algum curso na sala '20 AVW'

-- Liste o nome do alunos e o nome da formação cuja formação contenha a string 'cie'

-- Conte o número de alunos.

-- Quantas matrículas há no curso com nome 'Database Systems'

-- Selecione o nome de todos os professores dos departamentos 68 e 12.

-- Selecione o nome dos professores que deram aulas no curso com 'Database Systems' ou são do departamento 68.

-- Selecione o número dos alunos com formação 'Computer Science' ou que fizeram o curso de 'Database Systems'.

DROP TABLE IF EXISTS MATRICULADO;
DROP TABLE IF EXISTS ALUNO;
DROP TABLE IF EXISTS CURSO;
DROP TABLE IF EXISTS PROFESSOR;

CREATE TABLE ALUNO( 	
    nroAlun INTEGER PRIMARY KEY, 	
    nomeAlun VARCHAR (30), 	
    formacao VARCHAR (25), 	
    nivel VARCHAR(2), 	
    idade INTEGER	
); 

CREATE TABLE PROFESSOR(
	idProf INTEGER PRIMARY KEY, 	
	nomeProf VARCHAR (30), 	
	idDepto INTEGER	
);

CREATE TABLE CURSO( 	
	nome VARCHAR(40) PRIMARY KEY, 	
	horario VARCHAR(20), 	
	sala VARCHAR (10), 	
	idProf INTEGER, 	
	FOREIGN KEY(idProf) REFERENCES PROFESSOR(idProf)	
); 

CREATE TABLE MATRICULADO( 	
	nroAlun INTEGER, 	
	nomeCurso varchar(40), 	
	PRIMARY KEY (nroAlun, nomeCurso), 	
	FOREIGN KEY (nroAlun) REFERENCES ALUNO(nroAlun), 
	FOREIGN KEY (nomeCurso) REFERENCES CURSO(nome) 	
);
INSERT INTO ALUNO(nroAlun, nomeAlun, formacao, nivel, idade) VALUES (051135593, 'Maria White', 'English', 'SR',21),  (060839453, 'Charles Harris', 'Architecture', 'SR', 22), (099354543, 'Susan Martin', 'Law', 'JR' ,20), (112348546, 'Joseph Thompson' ,'Computer Science', 'SO', 19), (115987938, 'Christopher Garcia', 'Computer Science', 'JR', 20), (132977562, 'Angela Martinez', 'History', 'SR', 20), (269734834, 'Thomas Robinson', 'Psychology', 'SO', 18), (280158572, 'Margaret Clark', 'Animal Science', 'FR', 18), (301221823, 'Juan Rodriguez', 'Psychology', 'JR', 20), (318548912, 'Dorthy Lewis', 'Finance', 'FR', 18), (320874981, 'Daniel Lee', 'Electrical Engineering', 'FR', 17), (322654189, 'Lisa Walker', 'Computer Science', 'SO', 17), (348121549, 'Paul Hall' ,'Computer Science', 'JR', 18), (351565322, 'Nancy Allen', 'Accounting', 'JR', 19), (451519864, 'Mark Young', 'Finance', 'FR', 18), (455798411, 'Luis Hernandez', 'Electrical Engineering', 'FR', 17), (462156489, 'Donald King', 'Mechanical Engineering', 'SO', 19), (550156548, 'George Wright', 'Education', 'SR', 21), (552455318, 'Ana Lopez', 'Computer Engineering', 'SR', 19), (556784565, 'Kenneth Hill', 'Civil Engineering', 'SR', 21), (567354612, 'Karen Scott', 'Computer Engineering', 'FR', 18), (573284895, 'Steven Green', 'Kinesiology',  'SO', 19), (574489456, 'Betty Adams', 'Economics', 'JR', 20), (578875478, 'Edward Baker', 'Veterinary Medicine', 'SR', 21);
INSERT INTO PROFESSOR(idProf, nomeProf, idDepto) VALUES (142519864, 'Ivana Teach',20),  (242518965, 'James Smith',68), (141582651, 'Mary Johnson',20), (011564812, 'John Williams',68), (254099823, 'Patricia Jones',68), (356187925, 'Robert Brown',12), (489456522, 'Linda Davis',20), (287321212, 'Michael Miller',12), (248965255, 'Barbara Wilson',12), (159542516, 'William Moore',33), (090873519, 'Elizabeth Taylor',11), (486512566, 'David Anderson',20),  (619023588, 'Jennifer Thomas',11),  (489221823, 'Richard Jackson',33),  (548977562, 'Ulysses Teach',20);
INSERT INTO CURSO(nome, horario, sala, idProf) VALUES ('Data Structures', 'MWF 10', 'R128', 489456522), ('Database Systems', 'MWF 12:30-1:45', '1320 DCL', 142519864),  ('Operating System Design', 'TuTh 12-1:20', '20 AVW', 489456522),   ('Archaeology of the Incas', 'MWF 3-4:15', 'R128', 248965255),  ('Aviation Accident Investigation', 'TuTh 1-2:50','Q3', 011564812),  ('Air Quality Engineering','TuTh 10:30-11:45','R15', 011564812),  ('Introductory Latin', 'MWF 3-4:15','R12', 248965255),  ('American Political Parties', 'TuTh 2-3:15','20 AVW', 619023588),  ('Social Cognition', 'Tu 6:30-8:40','R15', 159542516),  ('Perception', 'MTuWTh 3','Q3', 489221823),  ('Multivariate Analysis', 'TuTh 2-3:15' ,'R15', 489221823),  ('Patent Law','F 1-2:50','R128', 489221823),  ('Urban Economics','MWF 11','20 AVW', 489221823),  ('Organic Chemistry','TuTh 12:30-1:45','R12', 489221823),  ('Marketing Research','MW 10-11:15','1320 DCL', 489221823),  ('Seminar in American Art','M 4','R15', 489221823),  ('Orbital Mechanics','MWF 8','1320 DCL', 011564812),  ('Dairy Herd Management','TuTh 12:30-1:45','R128', 356187925),  ('Communication Networks', 'MW 9:30-10:45', '20 AVW', 141582651),  ('Optical Electronics', 'TuTh 12:30-1:45', 'R15', 254099823), ('Intoduction to Math', 'TuTh 8-9:30', 'R128', 489221823);
INSERT INTO MATRICULADO(nroAlun, nomeCurso) VALUES  (112348546,'Database Systems'),  (115987938,'Database Systems'), (348121549,'Database Systems'), (322654189,'Database Systems'), (552455318, 'Database Systems'), (455798411,'Operating System Design'), (552455318, 'Operating System Design'), (567354612, 'Operating System Design'), (112348546,'Operating System Design'), (115987938,'Operating System Design'), (322654189,'Operating System Design'), (567354612,'Data Structures'), (552455318,'Communication Networks'), (455798411,'Optical Electronics'), (301221823,'Perception'), (301221823,'Social Cognition'), (301221823,'American Political Parties'), (556784565,'Air Quality Engineering'), (099354543,'Patent Law'), (574489456,'Urban Economics');

-- 1  Encontre os nomes de todos os Juniors (nível = JR) que estão matriculados em um curso ministrado por Ivana Teach.

select nomeAlun
from Aluno, matriculado, curso, professor
where nivel = 'jr' and
aluno.nroAlun = matriculado.nroAlun and
matriculado.nomeCurso = Curso.nome and
curso.idProf = professor.idProf and
nomeProf = 'Ivana Teach';

-- 2 Encontre a idade do aluno mais velho que é formado em History ou matriculado em um curso ministrado por Ivana Teach.

select max(idade) from aluno, professor, matriculado
where aluno.formacao = 'History' 
union
select nomeAlun
from Aluno, matriculado, curso, professor
where nivel = 'jr' and
aluno.nroAlun = matriculado.nroAlun and
matriculado.nomeCurso = Curso.nome and
curso.idProf = professor.idProf and
nomeProf = 'Ivana Teach';
-- Encontre os nomes de todos os alunos que estão matriculados em dois cursos que são
-- ministrados no mesmo horário.

select * from aluno a, matriculado m1, curso c1, aluno a2, matriculado m2, curso c2
where a.nroAlun = m1.nroAlun and m1.nomeCurso = c1.nome and
		a.nroAlun = m2.nroAlun and m2.nomeCurso = c2.nome and
        c1.nome != c2.nome and c1.horario = c2.horario; 
-- 5 Encontre os nomes dos professores que ministram cursos em todas as salas em que algum
-- curso é ministrado. Há uma solução mais simples usando EXCEPT, mas não é suportado pelo MySQL.
select p.nomeProf from professor p, curso c, professor p1, curso c1
where p.idProf = c.idProf and c.sala = c1.sala and
p.nomeprof != p1.nomeProf;

select p.nomeProf 
from professor p
where not exists(
		select sala from curso
        where sala not in( select sala
							from curso
                            where idProf = p.idProf));

-- 8.Imprima o nível e a idade média dos alunos desse nível, para todos os níveis exceto JR.
-- 10. Encontre os nomes dos alunos matriculados no número máximo de cursos.
-- 11 Encontre os nomes dos alunos não matriculados em nenhum curso.
select *
from aluno  
where nroAlun not in(
select nroAlun
from matriculado);


-- 11.Imprima o nome e o salário de todo não piloto cujo salário é maior do que o salário médio
-- dos pilotos.
-- 12.Imprima os nomes dos funcionários que são certificados APENAS em aeronaves com dis-
-- tância limite maior do que 1.000 milhas.
-- 13.Imprima os nomes dos funcionários que são certificados apenas em aeronaves com distân-
-- cia limite maior do que 1.000 milhas, mas que sejam certificados para, no mínimo, duas
-- aeronaves desse tipo.
-- 14.Imprima os nomes dos funcionários que são certificados apenas em aeronaves com distância
-- limite maior do que 1.000 milhas e que são certificados em alguma aeronave Boeing.
-- Exercício 3 - Funcionário - Trabalha - Departamento
-- Considere as seguintes relações:
-- FUNCIONARIO(id:integer
-- , nome: string, idade:integer, salario real);
-- DEPARTAMENTO(id:integer
-- , nome:string, orcamento real, id_gerente:integer);
-- id_gerente referencia FUNCIONARIO
-- TRABALHA(id_funcionario:integer, id_depto:integer
-- , pct_tempo:integer);
-- id_funcionario referencia FUNCIONARIO
-- id_depto referencia DEPARTAMENTO
-- 1.Liste os nomes dos departamentos, e caso existam, os nomes dos funcionarios.

-- 2.verifique se há departamentos sem funcionários.
-- 3.Para cada departamento, calcule a idade média se seus funcionários.
-- 4.Lista os nomes dos gerentes que são mais velhos do que a idade média de seus funcionários.
-- 5.Liste o id dos gerentes que não trabalham no departamento que eles gerenciam.

-- 6.Liste os nomes dos funcionários que estão em dois ou mais departamentos.
-- 7.Imprima os nomes e as idades de cada funcionário que trabalha em ambos os departamentos
-- de Hardware e de Software.
-- 8.Escreva a quantidade de funcionários integrais por departamento.
-- 9.Para cada departamento com mais do que 20 funcionários equivalentes a tempo integral
-- (isto é, onde a soma dos funcionários de tempo parcial e de tempo integral seja no mínimo
-- essa quantidade de funcionários de tempo integral), imprima o idDepto juntamente com o
-- número de funcionários que trabalham nesse departamento.
-- 10.-- Imprima o nome de cada funcionário cujo salário exceda o orçamento de TODOS os de-
-- partamentos em que ele ou ela trabalhe.

-- 1.Encontre os nomes das aeronaves tais que TODOS os pilotos certificados para operá-las ganhem mais do que $80.000.
select * from aeronave ;
-- 3.Encontre os nomes dos pilotos cujos salários são menores do que o preço da rota mais barata de Los Angeles a Honolulu.

-- 5. Encontre os nomes dos pilotos certificados para alguma aeronave Boeing.

-- 6. Encontre os idAeros de todas as aeronaves que podem ser usadas nas rotas de Los Angeles a Chicago.

-- 11. Imprima o nome e o salário de todo não piloto cujo salário é maior do que o salário médio dos pilotos

/*1.
Encontre os nomes de todos os Juniors (nível = JR) que estão matriculados em um curso
ministrado por Ivana Teach.
2.
Encontre a idade do aluno mais velho que é formado em History ou matriculado em um
curso ministrado por Ivana Teach.
3.
Encontre os nome de todos os cursos que são ministrados na sala R128 ou que têm cinco
ou mais alunos matriculados.
4.
Encontre os nomes de todos os alunos que estão matriculados em dois cursos que são
ministrados no mesmo horário.
5.
Encontre os nomes dos professores que ministram cursos em todas as salas em que algum
curso é ministrado.
Há uma solução mais simples usando EXCEPT, mas não é suportado pelo MySQL.
6.
Encontre os nomes dos professores para os quais a lista de matriculados dos cursos que
eles ministram é menor do que cinco.
7.
Imprima o nível e a idade média dos alunos desse nível, para cada nível.
8.

9.

Banco de Dados 1 Página 1



-- 7 Imprima o nível e a idade média dos alunos desse nível, para cada nível.
select a.nivel, AVG(a.idade) as mediaIdade
from  aluno a
group by nivel;
-- 8 Imprima o nível e a idade média dos alunos desse nível, para todos os níveis exceto JR.
select a.nivel, AVG(a.idade) as mediaIdade
from  aluno a
where nivel <> 'JR'
group by a.nivel ;
/* 9 Para cada professor que ministra cursos apenas na sala R128, imprima seu nome e o número
total de cursos que ele ou ela ministra.
Há uma solução BEM mais simples usando o HAVING EVERY(C.SALA = ’R128’), mas
o EVERY não é suportado pelo MySQL.*/
select p.nomeProf , count(c.nome) as totalDeCursos
from professor p, curso c
where c.sala = 'R128' and p.idProf = c.idProf
group by p.nomeProf;
-- 10. Encontre os nomes dos alunos matriculados no número máximo de cursos.
select a.nomeAlun, -- count(c.nome) as maximo
-- para cada aluno quantas matriculas ele tem
from aluno a, curso c
where a.nomeAlun;

select nomeAlun, count(*) as maximo
from aluno a, matriculado m
where a.nroAlun = m.nroAlun
group by nomeAlun;

-- 11. Encontre os nomes dos alunos não matriculados em nenhum curso.
select nomeAlun, nroAlun
from aluno a
where a.nroAlun not in(
select nroAlun 
from matriculado 
); 
/* 12.
Para cada valor de idade que aparece em Aluno, encontre o valor do nível que aparece com
mais frequência. Por exemplo, se houver mais alunos no nível FR com idade 18 do que
alunos com idade 18 dos níveis SR, JR ou SR, você deve imprimir o par (18, FR).*/
select nivel, idade
from aluno
where nivel = (select nivel, i
				from )
group by nivel;
-- having   ;     
select max(nivel), idade, count(nivel)
from aluno
