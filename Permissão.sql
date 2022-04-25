--DDL
CREATE DATABASE ProtecaoRPG
GO

USE ProtecaoRPG
GO

CREATE TABLE Usuarios
(
  UsuarioID INT PRIMARY KEY IDENTITY,
  Email VARCHAR(75) UNIQUE NOT NULL,
  Senha VARCHAR(255) NOT NULL
)
GO

CREATE TABLE Classes
(
  ClasseID INT PRIMARY KEY IDENTITY,
  Nome VARCHAR(40) UNIQUE NOT NULL,
  Descricao VARCHAR(255)
)
GO

CREATE TABLE Personagens
(
  PersonagemID INT PRIMARY KEY IDENTITY,
  Nome VARCHAR(20) UNIQUE NOT NULL,
  UsuarioID INT UNIQUE FOREIGN KEY REFERENCES Usuarios(UsuarioID),
  ClasseID INT FOREIGN KEY REFERENCES Classes(ClasseID)
)
GO

CREATE TABLE Habilidades
(
  HabilidadeID INT PRIMARY KEY IDENTITY,
  Nome VARCHAR(100) UNIQUE NOT NULL
)
GO

CREATE TABLE ClasseHabilidade
(
  ClasseID INT FOREIGN KEY REFERENCES Classes(ClasseID),
  HabilidadeID INT FOREIGN KEY REFERENCES Habilidades(HabilidadeID)
)
--FINAL DDL

--DML

INSERT INTO Usuarios VALUES ('abelinhaDrogada@gmail.com', '1y2gv3hb77')
INSERT INTO Classes VALUES ('Caçador')
INSERT INTO Personagens VALUES ('Jon', 1, 1)
INSERT INTO Habilidades VALUES ('Instinto de Presa')
INSERT INTO ClasseHabilidade VALUES (1, 1)

--FIM DML


CREATE LOGIN Player WITH PASSWORD = '111j3n1jnk'

CREATE USER Player FOR LOGIN Player
GRANT SELECT TO Player


SELECT * FROM Usuarios
SELECT * FROM Personagens
SELECT * FROM Classes
SELECT * FROM Habilidades
SELECT * FROM ClasseHabilidade

CREATE TABLE Exemplo
--Usuario não terá permissão para alterar nada no banco;
