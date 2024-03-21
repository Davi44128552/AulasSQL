/* Criando database */
CREATE DATABASE universidade;

/* Acessando o banco de dados */
USE universidade;

/* Criando uma tabela */
CREATE TABLE IF NOT EXISTS usuarios (

	id int NOT NULL AUTO_INCREMENT,
    nome varchar(50) NOT NULL, 
    email varchar(100) UNIQUE,
    idade int NOT NULL,
    profissao varchar(22),
    PRIMARY KEY(id)

);

/* Adicionando elementos à tabela */
INSERT INTO usuarios
(id, nome, email, idade, profissao)

VALUES
(DEFAULT, 'Iasmim', 'iasmimaaguia@gmail.com', '19', 'Geógrafa'),
(DEFAULT, 'Davi', 'nenembrjr@gmail.com', '18', 'Analista de TI'),
(DEFAULT, 'Larissa', 'larissastudart@gmail.com', '18' ,'Veterinária');

/* Analisando os dados inseridos */
SELECT * FROM usuarios;

/* Deletando o banco de dados */
DROP DATABASE universidade;
