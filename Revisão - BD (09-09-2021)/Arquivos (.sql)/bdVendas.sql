CREATE DATABASE bdVendas
USE bdVendas

CREATE TABLE tbl_Vendas(
Mes VARCHAR (100)
,Produtos VARCHAR (100)
,Vendedor VARCHAR (100)
,Vendas FLOAT
,Regiao VARCHAR (100)
);

INSERT INTO tbl_Vendas(Mes, Produtos, Vendedor, Vendas, Regiao)
VALUES ('Maio','Latric?nios','Amaral',5477.00,'Oeste')
	,('Maio','Carnes','Bomfim',8012.00,'Leste')
	,('Maio','Latric?nios','Amaral',9411.00,'Oeste')
	,('Maio','Latric?nios','Amaral',8089.00,'Sul')
	,('Maio','Carnes','Bomfim',9566.00,'Sul')
	,('Junho','Latric?nios','Amaral',6805.00,'Leste')
	,('Junho','Carnes','Bomfim',265.00,'Sul')
	,('Junho','Carnes','Bomfim',5575.00,'Leste')
	,('Junho','Carnes','Amaral',5971.00,'Sul')
	,('Junho','Latric?nios','Bomfim',4046.00,'Norte')
	,('Junho','Latric?nios','Bomfim',6085.00,'Oeste')
	,('Junho','Carnes','Bomfim',1361.00,'Norte')

/* Imprimir o valor total das vendas do m?s de Maio e Junho */
SELECT SUM(Vendas) AS 'Total'
FROM tbl_Vendas

SELECT COUNT(Vendas) AS 'N? de Vendas (Leste)'
FROM tbl_Vendas 
WHERE Regiao = 'Leste'

SELECT AVG(Vendas) AS 'M?dia de Vendas (Maio)'
FROM tbl_Vendas 
WHERE Mes = 'Maio'

SELECT SUM(Vendas) * 0.20 AS 'Total (+20%)'
FROM tbl_Vendas