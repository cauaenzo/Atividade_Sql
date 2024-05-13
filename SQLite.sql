CREATE TABLE autor(
	id INTEGER NOT NULL PRIMARY KEY, 
  	nome VARCHAR(250), 
    altura FLOAT(5,2), 
  	idade INT,
  	nacionalidade varchar(250)
);
INSERT INTO autor VALUES(1, 'Tannebaum', 1.78, 56, 'estadunidense');
INSERT INTO autor VALUES(2, 'Al-kaibir', 1.56, 23, 'árabe');
INSERT INTO autor VALUES(3, 'Toroskovov', 1.9, 41, 'russo');
INSERT INTO autor VALUES(4, 'Sun Tzu', 1.61, 18, 'chinês');
INSERT INTO autor VALUES(5, 'Aitofel', 1.41, 34, 'hebreu');

INSERT INTO autor VALUES(6, 'yago', 1.65, 16, 'brasileiro');
INSERT INTO autor VALUES(7, 'cauã', 1.56, 15, 'brasileiro');
INSERT INTO autor VALUES(8, 'xi jiping', 1.80, 61, 'chinês');
INSERT INTO autor VALUES(9, 'dijkstra', 1.77, 45, 'indiano');
INSERT INTO autor VALUES(10, 'mahalanovis', 1.41, 34, 'indiano');
INSERT INTO autor VALUES(11, 'ramanujan', 1.31, 75, 'indiano');

select *from autor;

SELECT ROUND(SQRT(CEIL(altura)),2) from autor;
SELECT CONCAT(nome, ' ', idade) FROM autor;
--SELECT SUBSTRING(nome FROM inicio FOR comprimento) FROM tabela;
SELECT UPPER(nome) FROM autor;
SELECT LOWER(nome) FROM autor;

CREATE TABLE editora(
	id INTEGER NOT NULL PRIMARY KEY, 
  	nome VARCHAR(250), 
    renda FLOAT(5,2), 
  	colaborador INT  
);
INSERT INTO editora VALUES(1, 'Saber e Conhecer', 1500000, 30);
INSERT INTO editora VALUES(2, 'Sagah+', 356000, 12);
INSERT INTO editora VALUES(3, 'Aprender e cia', 11000000, 50);
INSERT INTO editora VALUES(4, 'Education Solution', 150000, 8);
INSERT INTO editora VALUES(5, 'Conhecimento e Luz', 500000, 17);
INSERT INTO editora VALUES(6, 'adapt educação', 550000, 12);
INSERT INTO editora VALUES(7, 'abdruschin o sábio', 870000, 15);

SELECT *FROM editora;

CREATE TABLE livro(
	id INTEGER NOT NULL PRIMARY KEY, 
  	titulo VARCHAR(250), 
    valor FLOAT(5,2), 
  	id_autor INT, 
  	id_editora INT,
    FOREIGN KEY(id_autor) REFERENCES autor(id),
    FOREIGN KEY(id_editora) REFERENCES editora(id)
);
INSERT INTO livro VALUES(1, 'Assim falava Zaratrusta', 30.50, 1, 2);
INSERT INTO livro VALUES(2, 'A arte da guerra', 20.7, 4, 3);
INSERT INTO livro VALUES(3, 'O último Teorema de Fermat', 50, 5, 1);
INSERT INTO livro VALUES(4, 'O segredo da maçonaria', 35.33, 2, 2);
INSERT INTO livro VALUES(5, 'Deus e os astronautas', 30.50, 3, 4);

INSERT INTO livro VALUES(6, 'inferno  -  dan brown', 180.87, 6, 4);
INSERT INTO livro VALUES(7, 'biblia sagrada', 50, 4, 3);
INSERT INTO livro VALUES(8, 'alcorão', 60, 2, 3);
INSERT INTO livro VALUES(9, 'universo racional', 200, 6, 7);
INSERT INTO livro VALUES(10, 'entre anjos e demonios', 75.77, 1, 5);

SELECT titulo, valor from livro WHERE id > 2;
SELECT MAX(valor) AS MaiorValor from livro;
SELECT MIN(valor) AS MenorValor from livro;
SELECT AVG(valor) AS MediaValor from livro;
SELECT COUNT(valor) AS QuantidadeValor from livro;
SELECT DISTINCT(valor) AS ValorUnico from livro;

SELECT id from livro AS l, autor as a 
WHERE l.id_autor = a.id AND a.nome = 'Tannebaum';


SELECT * FROM autor where idade > 30 OR altura > 1.8;
SELECT * FROM autor where not(idade > 23);
SELECT ROUND(altura * idade,2) FROM autor WHERE id > 2;
SELECT altura + idade FROM autor;
SELECT altura * idade FROM autor;
SELECT ROUND(altura / idade,2) FROM autor;
SELECT (idade % 2) as resto FROM autor where id = 2;
SELECT id FROM autor where id >= 2;
SELECT id FROM autor where id BETWEEN 2 AND 5;
