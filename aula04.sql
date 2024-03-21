/* Acessando o banco de dados desejado */
USE cadastro;

/* Adicionando uma nova informação à coluna */
ALTER TABLE pessoas
ADD COLUMN profissao varchar(15);

/* Verificando a tabela */
DESCRIBE pessoas;

/* Analisando os dados da tabela */
SELECT * FROM pessoas;

/* Eliminando uma coluna */
ALTER TABLE pessoas
DROP COLUMN profissão;

/* Adicionando a coluna em uma posição desejada */
ALTER TABLE pessoas
ADD COLUMN profissao varchar(15) AFTER peso;

/* Adicionando coluna na primeira posição */
ALTER TABLE pessoas
ADD COLUMN cpf char(14) FIRST;

/* Modificando um dado */
ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20);

/* Modificando o nome da coluna */
ALTER TABLE pessoas
CHANGE COLUMN profissao profissão varchar(22);

	/* ! -> É necessário declarar as configs do dado também */
    
/* Renomeando a tabela */
ALTER TABLE pessoas
RENAME TO usuarios;

/* Criando uma tabela em caso de não existência */
CREATE TABLE IF NOT EXISTS cursos (

	nome varchar(30) NOT NULL UNIQUE,
    descricao text ,
    carga int unsigned,
    totalaulas int, 
    ano year DEFAULT "2016",
    
) DEFAULT CHARSET = utf8mb4;

/* Adicionando ID e colocando como primária */
ALTER TABLE cursos
ADD COLUMN id int FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY(id);

/* Descrevendo cursos */
DESCRIBE cursos;

/* Removendo table */
DROP TABLE IF EXISTS cursos;