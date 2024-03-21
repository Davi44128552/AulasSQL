/* Criando o banco de dados */
CREATE DATABASE biblioteca
default character set utf8mb4
default collate utf8mb4_general_ci;

/* Acessando o banco de dados desejado */
USE biblioteca;

/* Criando a tabela */
CREATE TABLE livros (

	/* Adicionando os valores */
	id int AUTO_INCREMENT NOT NULL,
    titulo text NOT NULL,
    autor text NOT NULL,
    ano_publicacao year,
    disponibilidade bool,
    PRIMARY KEY(id)
    ) DEFAULT charset 'utf8mb4';
    
/* Acessando a tabela */
DESCRIBE livros;

/* Deletando o a tabela */
DROP TABLE livros;

/* Deletando o banco de dados */
DROP DATABASE biblioteca;