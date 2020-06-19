create table MINHAPRMEIRATABELA(
ID INT IDENTITY NOT NULL PRIMARY KEY,
DESCRICAO VARCHAR(30) NULL
)

ALTER TABLE MINHAPRMEIRATABELA ADD FLAGATIVA BIT --CRIA O CAMPO (COLUNA)

ALTER TABLE MINHAPRMEIRATABELA DROP COLUMN FLAGATIVA --APAGA O CAMPO CRIADO(COLUNA)

DROP TABLE MINHAPRMEIRATABELA --APAGA A TABELA 


/*
SQL - Structure Query Language

DDL - Data Definition Language 

DML - Data Manipulation Language 

DQL - Data Query Language
*/

CREATE DATABASE VENDAS

USE VENDAS

CREATE TABLE CATEGORIAS (
categoriaId integer not null identity primary key ,
descricao varchar(30) null
)

Insert into categorias (descricao) values('Drograria')
Insert into CATEGORIAS (descricao) values('Bazar'),('Brinquedo'),('Higiene')

select * from categorias where descricao = 'Brinquedo'

select categoriaId,descricao 
from categorias 
/*
where descricao like 'ba%' --comecar com ba
where descricao like '%a%' --tenha o 'a' no meio 
where descricao like '%ar' -- temine com 'ar'
*/


update categorias set descricao = 'Alimento' where categoriaId = 1
select * from CATEGORIAS

delete CATEGORIAS where categoriaID = 3
select * from CATEGORIAS

dbcc checkident('Categorias', reseed, 0) --reinicia a sequencia da chave primaria 

sp_helpdb vendas --informacoes do banco de dados
sp_help categorias --informacoes da tabela

select * from categorias order by categoriaId desc

select * into #TEMP01
from categorias

SELECT * FROM #TEMP01