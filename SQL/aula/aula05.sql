/* Criando uma nova tabela para os cursos */
CREATE TABLE cursos (

	idcurso int NOT NULL AUTO_INCREMENT,
    nome varchar(30) NOT NULL UNIQUE,
    descricao text,
    carga int NOT NULL,
    totalaulas int NOT NULL,
    ano year NOT NULL,
    PRIMARY KEY(idcurso)
    
) charset = 'utf8mb4';

/* Adicionando registros às tabelas */
INSERT INTO cursos
(idcurso, nome, descricao, carga, totalaulas, ano)

VALUES
(DEFAULT, 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
(DEFAULT, 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
(DEFAULT, 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
(DEFAULT, 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
(DEFAULT, 'Jarva', 'Introdução à linguagem Java', '10', '29', '2000'),
(DEFAULT, 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
(DEFAULT, 'Word', 'Curso Completo de Word', '40', '30', '2016'),
(DEFAULT, 'Sapateando', 'Danças Rítmicas', '40', '30', '2018'),
(DEFAULT, 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
(DEFAULT, 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

/* Editando alguns registros */
	/* HTML */
UPDATE cursos
SET nome = 'HTML5'
WHERE  idcurso = '1';

	/* PHP */
UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

	/* Java */
UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso = '5'
LIMIT 1; /* Modifica apenas uma linha */

	/* ! -> A workbench possui safe update, para evitar atualizar vários registros. É possível desligar nas configurações */
    
/* Removendo alguns registros */
DELETE FROM cursos
WHERE idcurso = '8';

DELETE FROM cursos
Where ano = '2018'
LIMIT 2;

/* Removendo todos os registros da tabela */
TRUNCATE TABLE cursos;

/* Analisando os registros da tabela */
SELECT * FROM cursos;