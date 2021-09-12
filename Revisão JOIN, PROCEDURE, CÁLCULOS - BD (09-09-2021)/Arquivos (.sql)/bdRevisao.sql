CREATE DATABASE bdRevisao /* Criando uma base de dados */
USE bdRevisao /* Indicando o banco de dados a ser usado */

/* Criando a tabela para armazenamento dos dados dos Cliente */
CREATE TABLE tbl_Cliente(
Codigo INT PRIMARY KEY IDENTITY (1,1)
,Nome VARCHAR (50)
,dataNascimento DATE 
);

CREATE TABLE tbl_Telefones (
Codigo INT FOREIGN KEY REFERENCES tbl_Cliente
,Fone VARCHAR (50)
,Tipo VARCHAR (50)
);

/* ============================================================================================================================*/

/* Inserindo os dados na tabela 'tbl_Cliente' */
INSERT INTO tbl_Cliente (Nome, dataNascimento)
VALUES ('Marcio','1/05/2007')
,('Marlos','5/08/1980')
,('Luciene','10/05/1970')
,('Wilkie','12/03/1984')

/* Inserindo os dados na tabela 'tbl_Telefones' */
INSERT INTO tbl_Telefones (Codigo, Fone, Tipo) 
VALUES (1,'9999-8888','Residencial')
,(1,'7777-6666','Celular')
,(2,'5555-4444','Celular')
,(3,'2222-1111','Residencial')

SELECT * FROM tbl_Cliente
SELECT * FROM tbl_Telefones

/* ============================================================================================================================*/

/* Buscando o Nome na tbl_Cliente e Telefone (Fone) na tabela tbl_Telefones */
SELECT d.Nome, p.Fone FROM tbl_Cliente d inner join tbl_Telefones p ON d.Codigo = p.Codigo