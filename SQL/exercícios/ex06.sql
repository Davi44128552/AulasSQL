/* Analisando a tabela de cursos */
DESCRIBE cursos;

/* Adicionando registros à tabela */
INSERT INTO cursos
(idcurso, nome, descricao, carga, totalaulas, ano)

VALUES
(DEFAULT, 'Medicina', 'Cuidar de pessoas', '3600', '1200', '2023'),
(DEFAULT, 'Ciência da Computação', 'Estudo da computação', '3200', '800', '2000'),
(DEFAULT, 'Odontologia', 'Estudo da gramática', '3400', '1000', '1922'),
(DEFAULT, 'Gastronomia', 'Estudo da alimentação', '2400', '200', '2010');

/* Editando alguns registros */
	/* Medicina */
UPDATE cursos
SET carga = '4200', totalaulas = '1600', ano = '2014'
WHERE idcurso = '1';

	/* Ciência da Computação */
UPDATE cursos
SET ano = '2019'
WHERE idcurso = '2';

	/* Odontologia */
UPDATE cursos
set descricao = 'Estudo da saúde dentária', ano = '2015'
WHERE idcurso = '3';

/* Removendo registros da tabela */
DELETE FROM cursos
WHERE idcurso = '4';

/* Removendo todos os registros da tabela */
TRUNCATE TABLE cursos;

/* Analisando os registros */
SELECT * FROM cursos;
