/* Acessando o banco de dados desejado */
USE cadastro;

/* Adicionando um registro à tabela */
INSERT INTO pessoas
(nome, nascimento, sexo, altura, peso, nacionalidade)

VALUES
('Godofredo', '1984-01-02', 'M', '1.83', '78.5', 'Brasileiro');

/* ! -> Como 'id' possui a configuração de auto-incrementação, não é necessário defini-lo, pois isto será feito automaticamente */
/* Forma alternativa (caso deseje deixar o id na sintaxe) */
INSERT INTO pessoas
(id, nome, nascimento, sexo, altura, peso, nacionalidade)

VALUES
(DEFAULT, 'Roberta', '1987-05-03', 'F', '1.66', '52.3', 'Americana');

/* ! -> Caso os valores já estejam na ordem do SQL, não é necessário informá-los */
/* Demonstração */
INSERT INTO pessoas VALUES
(DEFAULT, 'Paulo', '1995-03-01', 'M', '1.91', '83.45', DEFAULT);

/* Adicionando mais de um registro */
INSERT INTO pessoas
(id, nome, nascimento, sexo, altura, peso, nacionalidade)

VALUES
(DEFAULT, 'João', '2003-06-21', 'M', '1.72', '65', DEFAULT),
(DEFAULT, 'Maria', '1977-01-03', 'F', '1.55', '51.2', 'Portuguesa'),
(DEFAULT, 'Paul', '1989-04-13', 'M', '1.81', '75.1', 'Francês');

/* Analisando os registros adicionados */
SELECT * FROM pessoas;