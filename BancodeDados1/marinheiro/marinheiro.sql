-- create database marinheiro;
-- use marinheiro;
DROP TABLE IF EXISTS Reservas, Barcos, Marinheiros;

CREATE TABLE Marinheiros (
  id_marin INTEGER PRIMARY KEY,
  nome_marin VARCHAR(50) NOT NULL,
  avaliacao INTEGER NOT NULL,
  idade NUMERIC(3,1) NOT NULL
);

CREATE TABLE Barcos (
  id_barco INTEGER PRIMARY KEY,
  nome_barco VARCHAR(50) NOT NULL,
  cor VARCHAR(50) NOT NULL
);

CREATE TABLE Reservas(
  id_marin INTEGER,
  id_barco INTEGER,
  dia DATE,
  PRIMARY KEY (id_marin, id_barco),
  FOREIGN KEY (id_marin) REFERENCES Marinheiros(id_marin),
  FOREIGN KEY (id_barco) REFERENCES Barcos(id_barco)
);

INSERT INTO Marinheiros(id_marin, nome_marin, avaliacao,idade) VALUES ('22', 'Dustin', 7, 45.0), ('29', 'Brutus', 1, 33.0), ('31', 'Lubber', 8, 55.5), ('32', 'Andy', 8, 25.5), ('58', 'Rusty', 10, 35.0), ('64', 'Horiato', 7, 35.0), ('71', 'Zorba', 10, 16.0), ('74', 'Horiato', 9, 35.0), ('85', 'Art', 3, 25.5), ('95', 'Bob', 3, 63.5);
INSERT INTO Barcos (id_barco, nome_barco, cor) VALUES (101, 'Interlack', 'Blue'), (102, 'Interlack', 'Red'), (103, 'Clipper', 'Green'), (104, 'Marine', 'Red');
INSERT INTO Reservas (id_marin, id_barco, dia) VALUES (22, 101, '10/09/02'), (22, 102, '10/08/02'), (22, 103, '22/8/02'), (22, 104, '22/7/02'), (31, 102, '22/10/02'), (31, 103, '11/6/8'), (31, 104, '11/12/2'), (64, 101, '9/5/9'), (64, 102, '9/8/8'), (74, 103, '9/08/02');
