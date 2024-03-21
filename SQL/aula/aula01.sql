/* Para criar um novo banco de dados */
CREATE DATABASE cadastro;

/* Selecionando o banco de dados */
USE cadastro;

/* Criando a tabela */
CREATE TABLE pessoas (
	nome varchar(30),
    idade tinyint,
    sexo char(1),
    altura float,
    peso float,
    nacionalidade varchar(20)
    );
    
/* Analisando a table criada */
DESCRIBE pessoas;