/* Deletando um banco de dados */
DROP DATABASE cadastro;

/* Criando um novo banco de dados */
CREATE DATABASE cadastro

/* Personalizando o banco de dados para caracteres especiais */
default character set utf8mb4
default collate utf8mb4_general_ci;

/* Abrindo o banco de dados desejado */
USE cadastro;

/* Criando uma nova tabela */
CREATE TABLE pessoas (

	/* Criando uma informação que será primária (será a chave) */
    id int NOT NULL AUTO_INCREMENT,
	nome varchar(30) NOT NULL, /* "NOT NULL" = Não pode ser vazio */
    nascimento date NOT NULL,
    sexo enum('M', 'F'),
    altura decimal(3, 2),
    peso decimal(5, 2),
    nacionalidade varchar(20) DEFAULT 'Brasileiro', /* Caso não seja preenchido, a nacionalidade será "BRASILEIRO" */
    
    /* Priorizando o id */
    PRIMARY KEY (id)
    
	) DEFAULT CHARSET = 'utf8mb4' ; /* Formatando o tipo de texto */
    
DESCRIBE pessoas;