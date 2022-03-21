/*Atividade 6
Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica*/

CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
ti VARCHAR(255),
adm VARCHAR(255),
saude VARCHAR(255),
gestao VARCHAR(255),


PRIMARY KEY (id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
id BIGINT AUTO_INCREMENT,
categoria_id BIGINT,

enfermagem VARCHAR(255),
nome VARCHAR (255),
Java BOOLEAN,
libras BOOLEAN,
python BOOLEAN,
ingles BOOLEAN,
valor DECIMAL (5,2),

PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_curso;

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (ti, adm, saude, gestao)
	VALUES ("SIM","NÃO","NÃO","NÃO");
INSERT INTO tb_categoria (ti, adm, saude, gestao)
	VALUES ("NAO","NAO","SIM","NAO");
INSERT INTO tb_categoria (ti, adm, saude, gestao)
	VALUES ("NAO","NAO","NAO","NAO");
INSERT INTO tb_categoria (ti, adm, saude, gestao)
	VALUES ("NAO","NAO","NAO","SIM");
    
-- Popule esta tabela curso com até 8 dados.
INSERT INTO tb_curso (nome, java, libras, python, ingles, valor)
	VALUES ("Java",true, false, false, false, 50 );
INSERT INTO tb_curso (nome, java, libras, python, ingles, valor)
	VALUES ("Libras",false, true, false, false, 10 );
INSERT INTO tb_curso (nome, java, libras, python, ingles, valor)
	VALUES ("Ingles", false, false, false, true, 100 );
INSERT INTO tb_curso (nome, java, libras, python, ingles, valor)
	VALUES ("Python", true, false, true, false, 80 );
    
    
    
    SELECT * FROM tb_curso where valor>50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_curso WHERE valor>3 and valor<60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_curso WHERE nome LIKE "%j%";

 -- Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_curso
INNER JOIN tb_categoria on tb_categoria.id=tb_curso.categoria_id; 

-- Faça um select onde traga todos os Produtos de uma categoria específica
SELECT * FROM tb_curso
INNER JOIN tb_categoria on tb_categoria.id=tb_curso.id
WHERE tb_curso.java=true;




