/* Criando o banco de dados */
CREATE DATABASE biblioteca
default character set utf8mb4
default collate utf8mb4_general_ci;

/* Acessando o banco de dados */
USE biblioteca;

/* Criando uma nova tabela */
CREATE TABLE livros (

	/* Adicionando os seus valores */
	id int NOT NULL AUTO_INCREMENT,
    titulo text NOT NULL,
    autor text NOT NULL, 
    ano_de_publicação year,
    disponibilidade bool NOT NULL,
    
    /* Priorizando o id */
    PRIMARY KEY(id)

) DEFAULT CHARSET 'utf8mb4';

/* Acessando a tabela criada */
DESCRIBE livros;

/* Adicionando valores à tabela */
INSERT INTO livros
(id, titulo, autor, ano_de_publicação, disponibilidade)

VALUES
(DEFAULT, 'O Apanhador No Campo De Centeio', 'J.D. Salinger', '1951', true),
(DEFAULT, '1984', 'George Orwell', '1948', false),
(DEFAULT, 'Fahrenheit 451', 'Ray Bradbury', '1953', true);

/* Consultando os livros disponíveis na biblioteca */
SELECT * FROM livros;

/* Apagando a database */
DROP DATABASE biblioteca;