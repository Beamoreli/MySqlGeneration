/**Atividade 1
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.
Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).
Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
Faça um select utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).*/


CREATE DATABASE db_generation_game_online;

USE db_generation_game_online; 

CREATE TABLE tb_classe(
    id BIGINT AUTO_INCREMENT,
    nivel INT,
    classe VARCHAR(255),
    habilidade  VARCHAR(255),
    arma VARCHAR(255),
    
    PRIMARY KEY(id)
);

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    raca VARCHAR(255),
    vida INT,
    defesa INT,
    ataque INT,
    classe_id BIGINT,
    
  PRIMARY KEY(id),
  -- na criação da foreign key, é importante colocar a chave estrangeira do mesmo tipo de dado da chave primaria da tabela que você quer relacionar, no caso, bigint
	FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
 
);

SELECT * FROM tb_personagem;

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(80 ,"Guerreiro","Pericia em armas","Espada");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(100,"Mago","Resistencia a Magia","Cajado");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(200 ,"Ladino","Mãos leves","Adaga");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(180 ,"Arqueiro","Arquerismo","Arco e flecha");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(50 ,"Bardo","Lábia","Alaude");

INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
VALUES("Tristana","Anão",1500 ,3000, 12000, 1);

INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
VALUES("Veigar","Elfo Negro",1000 , 1200 , 3000 , 5);

INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
VALUES("Hecarim","Centauro", 5000 , 700 , 7500,2);

INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
VALUES("Caitlyn","Humana", 500 ,6000 ,2000 , 3);

INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
VALUES("Zyra","Planta", 2000, 8800, 4000 , 4);

INSERT INTO tb_personagem(nome,raca,vida,defesa,ataque,classe_id)
VALUES("Lulu","Elfa", 2500, 6000, 8000 , 3);



-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000
SELECT * FROM tb_personagem WHERE ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000. Com duas maneiras de se conseguir o resultado esperado
SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <=2000;
/**outra forma de fazer a query da consulta de defesa
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;*/


-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
-- Na parte onde temos o %, ele pode ser usado da forma "c%", indicando que procuramos nomes que começem com a letra C, ou da forma "c%", indicando que procuramos nomes que terminem com C. Usando "%c%" indicamos que queremos dados que contenham a letra C.
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
SELECT * FROM tb_personagem 
INNER JOIN tb_classe on tb_classe.id = tb_personagem.id;


-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_personagem.classe_id = tb_classe.id
WHERE classe_id = 3;