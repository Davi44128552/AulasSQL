/* Criando e acessando a database */
CREATE DATABASE exercicio
default char set utf8mb4
default collate  utf8mb4_general_ci; 

USE exercicio;

/* Criando as tabelas */
CREATE TABLE departamentos (
	
    id int NOT NULL AUTO_INCREMENT,
    nome varchar(25) NOT NULL,
    PRIMARY KEY(id)
    
) default charset = 'utf8mb4';

DESCRIBE TABLE departamentos;

CREATE TABLE funcionarios (

	id int NOT NULL AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    cargo varchar(20) NOT NULL,
    salario decimal(7,2) DEFAULT '1320.50',
    PRIMARY KEY(id)
    
    ) default charset = 'utf8mb4';
    
DESCRIBE TABLE funcionarios;

/* Adicionando registros às tabelas */
INSERT INTO departamentos
(id, nome)

VALUES 
(DEFAULT, 'computação'),
(DEFAULT, 'direito'),
(DEFAULT, 'contabilidade');

SELECT * FROM departamentos;

INSERT INTO funcionarios
(id, nome, cargo, salario)

VALUES
(DEFAULT, 'Rodrigo', 'promotor', '24258.00'),
(DEFAULT, 'Jéssica', 'médica', '14500.00'),
(DEFAULT, 'José','cientista de dados', '7500.00'),
(DEFAULT, 'Leonardo', 'engenheiro de dados', '24000.00'),
(DEFAULT, 'Wilton', 'advogado', '6595.49');

SELECT * FROM funcionarios;