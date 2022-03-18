/**
Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
**/



CREATE DATABASE db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
produto varchar(255),
quantidade varchar(255),
valor decimal(10,2),
cor  varchar(255),
estoque boolean not null,

primary key(id)

);
select * from tb_produtos;

insert into tb_produtos (produto, quantidade, valor, cor, estoque)
	values ("Mascara Pigmentante", 25,200, "azul", true);
insert into tb_produtos (produto, quantidade, valor, cor, estoque)
	values ("Mascara Pigmentante", 10,700, "verde", true);
insert into tb_produtos (produto, quantidade, valor, cor, estoque)
	values ("Mascara Pigmentante", 10,600, "roxo", true);
insert into tb_produtos (produto, quantidade, valor, cor, estoque)
	values ("Mascara Pigmentante", 5,500, "amarelo", true);
insert into tb_produtos (produto, quantidade, valor, cor, estoque)
	values ("Mascara Pigmentante", 0,900, "preto", false);
insert into tb_produtos (produto, quantidade, valor, cor, estoque)
	values ("Mascara Pigmentante", 2,400, "laranja", true);
insert into tb_produtos (produto, quantidade, valor, cor, estoque)
	values ("Mascara Pigmentante", 0,300, "rosa", false);
insert into tb_produtos (produto, quantidade, valor, cor, estoque)
	values ("Mascara Pigmentante", 0,100, "ciano", false);
    
select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

 update tb_produtos set quantidade = 2 where id =7;
    