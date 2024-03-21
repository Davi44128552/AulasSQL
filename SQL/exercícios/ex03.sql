/* Criando um novo banco de dados */
CREATE DATABASE database_provisoria
default character set utf8mb4
default collate utf8mb4_general_ci;

/* Acessando o banco de dados criado */
USE database_provisoria;

/* Criando uma tabela para o banco de dados */
CREATE TABLE tabela_provisoria (

	/* Adicionando os valores para a tabela */
	id int NOT NULL AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    sexo enum('M', 'F'),
	nascimento date NOT NULL, 
    altura decimal(3, 2),
    peso decimal(5, 2),
    nacionalidade varchar(20) DEFAULT 'Brasileiro',
    
    /* Colocando o id como primário */
    PRIMARY KEY(id)
    ) DEFAULT CHARSET 'utf8mb4';

/* Analisando as informações da tabela */
DESCRIBE tabela_provisoria;

/* Removendo a tabela criada */
DROP TABLE tabela_provisoria;

/* Removendo o banco de dados */
DROP DATABASE database_provisoria;
    