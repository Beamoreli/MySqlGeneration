/*

Atividade 3
Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tarja VARCHAR(255),
secao VARCHAR(255),
funcao VARCHAR(255),

PRIMARY KEY (id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
categoria_id BIGINT,
valor DECIMAL(5,2),
marca VARCHAR(255),
nome VARCHAR (255),
quantidade INT,
pago BOOLEAN, 

PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_produto;


-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (tarja, secao, funcao)
	VALUES ("Amarela","Medicamento","Parar a Dor");
INSERT INTO tb_categoria (tarja, secao, funcao)
	VALUES ("Vermelha","Medicamento","Parar a cólica");
INSERT INTO tb_categoria (tarja, secao, funcao)
	VALUES ("Preta","Medicamento","Calmante");
INSERT INTO tb_categoria (tarja, secao, funcao)
	VALUES ("Sem tarja","Higiene","Uso Pessoal ");
    
    -- Popule esta tabela Produto com até 8 dados.os.
INSERT INTO tb_produto(valor, marca, nome, quantidade, pago)
	VALUES (50,"Generico","Dipirona",10, true);
INSERT INTO tb_produto(valor, marca, nome, quantidade, pago)
	VALUES (60,"Generico","Buscopan",5, false);
INSERT INTO tb_produto(valor, marca, nome, quantidade,pago)
	VALUES (20,"SeaKalm","Calmante",100,false);
INSERT INTO tb_produto(valor, marca, nome, quantidade,pago)
	VALUES (10,"Dove","Sabonete",2, true);
    
    -- Faça um select que retorne os Produtos com o valor maior do que 50 reais..
SELECT * FROM tb_produto where valor>50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE valor>3 and valor<60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

 -- Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id=tb_produto.categoria_id; 


-- Faça um select onde traga todos os Produtos de uma categoria específica.

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id=tb_produto.id
WHERE tb_produto.Pago=true;
   


