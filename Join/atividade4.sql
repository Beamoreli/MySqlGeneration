/*


Atividade 4
Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são aves ou legumes).*/

CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
quantidade INT,
quilos INT,

PRIMARY KEY (id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
	categoria_id BIGINT,
    nome VARCHAR(25),
	Brocolis BOOLEAN,
	Couve BOOLEAN,
	Limao BOOLEAN,
	Banana BOOLEAN,
	Beterraba BOOLEAN,
    valor DECIMAL(5,2),
    
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_produto;

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (tipo, quantidade, quilos)
	VALUES ("verdura",10, 2 );
INSERT INTO tb_categoria (tipo, quantidade, quilos)
	VALUES ("verdura", 2, 1 );
INSERT INTO tb_categoria (tipo, quantidade, quilos)
	VALUES ("fruta", 20, 5 );
INSERT INTO tb_categoria (tipo, quantidade, quilos)
	VALUES ("fruta", 2, 1 );
INSERT INTO tb_categoria (tipo, quantidade, quilos)
	VALUES ("Legume", 12, 4 );

-- Popule esta tabela produto com até 8 dados.
INSERT INTO tb_produto (nome, Brocolis, Couve, Limao, Banana, Beterraba, valor)
	VALUES("Brocolis", true ,false, false, false , false, 32 );
INSERT INTO tb_produto (nome, Brocolis, Couve, Limao, Banana, Beterraba, valor)
	VALUES("Couve", false, true, false, false, false, 42 );
INSERT INTO tb_produto (nome, Brocolis, Couve, Limao, Banana, Beterraba, valor)
	VALUES("Limao", false, false, true, false , false, 55 );
INSERT INTO tb_produto (nome, Brocolis, Couve, Limao, Banana, Beterraba, valor)
	VALUES("Banana", false, false, false, true , false, 29 );
INSERT INTO tb_produto (nome, Brocolis, Couve, Limao, Banana, Beterraba, valor)
	VALUES("Beterraba", false, false, false, false, true , 75 );


 -- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto where valor>50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE valor>3 and valor<60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id=tb_produto.categoria_id; 

-- Faça um select onde traga todos os Produtos de uma categoria específica.
SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id=tb_produto.id
WHERE tb_produto.Limao=true;
