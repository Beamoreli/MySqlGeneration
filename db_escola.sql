/*Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.**/

create database db_escola;

use db_escola;

create table tb_estudante (
 id bigint auto_increment,
 nome varchar(255),
 serie varchar(255),
 idade int,
 materia varchar(255),
 nota int,
 
 primary key(id)
);

select * from tb_estudante;

insert into tb_estudante(nome, serie, idade, materia, nota) 
	values ("Maria", "5ª ano", 13, "Matematica", 10 );
insert into tb_estudante(nome, serie, idade, materia, nota)
	values ("Joao", "6ª ano", 14, "Portugues", 8 );
insert into tb_estudante(nome, serie, idade, materia, nota) 
	values ("Jose","7ª ano", 15, "Historia", 10 );
insert into tb_estudante(nome, serie, idade, materia, nota)
	values ("Alfredo", "9ª ano", 17, "Artes", 0 );
insert into tb_estudante(nome, serie, idade, materia, nota) 
	values ("Amanda", "5ª ano", 13, "Geografia", 3 );
insert into tb_estudante(nome, serie, idade, materia, nota)
	values ("Larissa", "6ª ano", 14, "Sociologia", 4 );
insert into tb_estudante(nome, serie, idade, materia, nota) 
	values ("Luana","7ª ano", 15, "Fisica", 2 );
insert into tb_estudante(nome, serie, idade, materia, nota)
	values ("Fernanda", "9ª ano", 17, "Biologia", 2 );
    
select * from tb_estudante where nota > 7;
select * from tb_estudante where nota < 7;
    
    
update tb_estudante set nota = 5 where id = 4;
    