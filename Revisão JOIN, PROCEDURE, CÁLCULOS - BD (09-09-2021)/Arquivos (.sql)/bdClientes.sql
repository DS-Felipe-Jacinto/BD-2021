CREATE DATABASE bdClientes /* Criando uma base de dados */
USE bdClientes /* Indicando o banco de dados a ser usado */

/* Criando a tabela para armazenamento dos dados dos Clientes */
CREATE TABLE tbl_Clientes(
Codigo INT PRIMARY KEY IDENTITY (1,1)
,Nome VARCHAR (100)
,Endereco VARCHAR (100)
,Cidade VARCHAR (100)
,Estado VARCHAR (100)
,CEP VARCHAR (100)
,Telefone VARCHAR (15)
,Email VARCHAR (100)
,Status VARCHAR (100)
);

/* ============================================================================================================================*/

/* Inserindo os dados na tabela 'tbl_Clientes' */
INSERT INTO tbl_Clientes(Nome, Endereco, Cidade, Estado, CEP, Telefone, Email, Status)
VALUES ('José Carlos Macoratti','Rua Projetada 100','Brasília','DF','12345-678','61-2635-2746','macoratti@yahoo.com','A')
	,('Janice Raquel','Av. Sol 78','São Paulo','SP','23456-789','11-9475-9721','janice@uol.com.br','C')
	,('Miriam Estela','Av. México 100','Santos','SP','76753-954','11-9432-6526','miriam@net.com.br','C')
	,('Jefferson Santos','Pça. XV Novembro 12','Campinas','SP','95275-126','11-8347-0247','jeffs@uol.com.br','C')
	,('Maria Silva Sá','R. Peru 123','Campinas','SP','89274-261','11-8213-4789','marisa@net.com.br','C')
	,('Amélia Lima Silva','Al. Hortencias 109','Limeira','SP','90542-163','11-3735-5845','amelia@hotmail.com','C')
	,('Carlos Santos','R. Argentina 89','Americana','SP','13886-283','11-2324-4780','carlosantos@uol.com.br','C')
	,('Luiz Carlos Monteiro','Av. Roma 909','São Paulo','SP','56301-253','11-2789-4534','luizcarlos@yahoo.com','C')
	,('Débora Ribeiro','Pça. D. Pedro II 67','Belo Horizonte','MG','65965-636','11-1329-5647','macoratti@yahoo.com','C')
	,('Marcos Lima','R. Venezuela 74','Rio de Janeiro','RJ','32450-546','11-2429-5684','marcos@uol.com.br','A')
	,('Roberto Santos','Av. São Luiz 75','São Paulo','SP','65731-965','11-3943-2745','roberto@net.com.br','C')
	,('William Nascimento','Pça Do Carmo 44','Curitiba','PR','31322-123','11-7823-1735','william@hotmail.com','C')
	,('Silvia Sanches','R. Equador 89','Porto Alegre','RS','10414-073','11-9502-9524','silva@uol.com.br','C')
	,('Dilma Tadeu Santos','Trav. Particular 143','Vila Velha','ES','43222-085','11-3213-5374','dilma@uol.com.br','C')
	,('Teste','Teste','Teste','xx','45856-127','xxxxxxxxxx','xxxxxxxxxxxxxxxxxxx','C')

SELECT * FROM tbl_Clientes

/* ============================================================================================================================*/

/* Buscar dados a partir do Status, digitado pelo usuário */
CREATE PROCEDURE buscarStatus @Status VARCHAR (1)
AS
SELECT * FROM tbl_Clientes WHERE Status = @Status

EXECUTE buscarStatus A /* Digite A ou B */

/* Buscar dados a partir do Estado, digitado pelo usuário */
CREATE PROCEDURE buscarEstado @Estado VARCHAR (100)
AS
SELECT Nome, Cidade, Endereco AS 'Endereço' FROM tbl_Clientes WHERE Estado = @Estado

EXECUTE buscarEstado 'SP' /* Digite aqui, a sigla do Estado (Ex: SP, MG, RS...) */