--1) Selecione o preço máximo de todos os livros na tabela. 
SELECT MAX(valor) from livro;

--2) Liste todos os autores distintos da tabela. 
SELECT DISTINCT(nome) FROM autor;

--3) Conte quantos livros estão na tabela. 
SELECT COUNT(id) FROM livro;

--4) Calcule a soma total dos preços dos livros. 
SELECT SUM(valor) FROM livro;

--5) Apresente a quantidade de autores, a média da idade dos autores, soma das alturas dos autores, isto tudo por nacionalidade.
SELECT nacionalidade, COUNT(id), ROUND(AVG(idade)), SUM(altura) FROM autor group by nacionalidade;

--6) Apresente os nomes e idades dos três autores mais velhos.
SELECT nome, idade FROM autor ORDER BY idade DESC LIMIT 3;

-- Second part

--1) Ordene os livros por preço em ordem decrescente. 
SELECT titulo, valor FROM livro order by valor desc;

--2) Selecione os livros cujo preço está entre $10 e $20. 
SELECT* from livro WHERE valor BETWEEN 10 and 20;

--3) Encontrar os autores onde a média das alturas é superior a 1.5;
SELECT nome, altura FROM autor WHERE ROUND(altura) > 1.5;

--4) Encontrar os livros que foi publicado pela editora x, escrito pelo autor y, que seu autor tem idade superior 30, altura maior que 1.75;
SELECT livro.titulo FROM livro JOIN autor ON livro.id_autor = autor.id JOIN editora ON livro.id_editora = editora.id
WHERE autor.idade > 30 AND autor.altura > 1.75 AND autor.nome = 'Toroskovov' AND editora.nome = 'Education Solution';

--5) Encontrar os livros que tem mais de 3 autores;
SELECT id_autor, COUNT(id_autor) FROM livro GROUP BY id_autor HAVING COUNT(id_autor) > 3 ORDER BY COUNT(id_autor) DESC;

--6) Encontrar os livros com valor superior a 70 reais, ordenados pela média em ordem decrescente:
SELECT titulo, valor FROM livro WHERE valor > 70 order by valor desc;
