/* Criando uma nova database */
CREATE DATABASE cadastro_de_alunos;

/* Acessando a database desejada */
USE cadastro_de_alunos;

/* Criando uma nova table */
CREATE TABLE dados (
	nome varchar(30),
    idade tinyint,
    matricula int,
    sexo char(1),
    media float
	);
