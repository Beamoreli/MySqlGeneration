/*Atividade 5
Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

Siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).*/


CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
quantidade INT,
categoria VARCHAR(255),

PRIMARY KEY (id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
categoria_id BIGINT,
valor DECIMAL(5,2),
marca VARCHAR(255),
quantidade INT,
pago BOOLEAN, 

PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_produto;

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (tipo, quantidade, categoria)
	VALUES ("Tinta",10, "Pintura");
INSERT INTO tb_categoria (tipo, quantidade, categoria)
	VALUES ("Piso",5,"Acabamento");
INSERT INTO tb_categoria (tipo, quantidade, categoria)
	VALUES ("Cimento",25,"Material");
INSERT INTO tb_categoria (tipo, quantidade, categoria)
	VALUES ("Lampada",2,"Iluminação ");

-- Popule esta tabela Produto com até 8 dados.
INSERT INTO tb_produto(valor, marca, quantidade, pago)
	VALUES (80,"Suvenil",10, false);
INSERT INTO tb_produto(valor, marca, quantidade, pago)
	VALUES (150,"Portinari",10, true);
INSERT INTO tb_produto(valor, marca, quantidade, pago)
	VALUES (35,"Votoran",10, true);
INSERT INTO tb_produto(valor, marca, quantidade, pago)
	VALUES (15,"Elgin",10, true);


SELECT * FROM tb_produto where valor>50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE valor>3 and valor<60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto WHERE marca LIKE "%c%";

 -- Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id=tb_produto.categoria_id; 

-- Faça um select onde traga todos os Produtos de uma categoria específica
SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id=tb_produto.id
WHERE tb_produto.Pago=true;