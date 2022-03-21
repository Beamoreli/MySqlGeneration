/*Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).*/

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
    id BIGINT AUTO_INCREMENT,
	tamanho VARCHAR(255),
    massa VARCHAR(255),
	tipo VARCHAR(255),
    PRIMARY KEY(id)
);
SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
    id BIGINT AUTO_INCREMENT,
    categoria_id BIGINT,
    nome VARCHAR(255),
    frango BOOLEAN,
    calabresa BOOLEAN,
    mussarela BOOLEAN,
	brigadeiro BOOLEAN,
    valor DECIMAL(5,2),
    
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_pizza;

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (tamanho, tipo, massa)
	VALUES ("Pequena", "Salgada", "Fina");
INSERT INTO tb_categoria (tamanho, tipo, massa)
	VALUES ("Grande", "Salgada", "Grossa");
INSERT INTO tb_categoria (tamanho, tipo, massa)
	VALUES ("Media", "Salgada", "Fina");
INSERT INTO tb_categoria (tamanho, tipo, massa)
	VALUES ("Media", "Salgada", "Fina");
INSERT INTO tb_categoria (tamanho, tipo, massa)
	VALUES ("Grande", "Doce", "Grossa");
    
-- Popule esta tabela pizza com até 8 dados.
INSERT INTO tb_pizza(nome, frango, calabresa, mussarela, brigadeiro, valor)
	VALUES("Frango", true ,false, false, false , 50 );
INSERT INTO tb_pizza(nome, frango, calabresa, mussarela, brigadeiro, valor)
	VALUES("Calabressa", false, true, false, false, 42 );
INSERT INTO tb_pizza(nome, frango, calabresa, mussarela, brigadeiro, valor)
	VALUES("Mussarela", false, false, true, false , 55 );
INSERT INTO tb_pizza(nome, frango, calabresa, mussarela, brigadeiro, valor)
	VALUES("Brigadeiro", false, false, false, true , 29 );
INSERT INTO tb_pizza(nome, frango, calabresa, mussarela, brigadeiro, valor)
	VALUES("Brigadeiro", false, false, false, true , 60 );
    
    -- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
SELECT * FROM tb_pizza where valor>45;
-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
SELECT * FROM tb_pizza WHERE valor>29 and valor<60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_pizza WHERE nome LIKE "%c%";
   
   -- Faça um um select com Inner join entre tabela categoria e pizza.
SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_categoria.id=tb_pizza.categoria_id; 

-- Faça um select onde traga todos os Produtos de uma categoria específica.
SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_categoria.id=tb_pizza.id
WHERE tb_pizza.Frango=true;
   
    