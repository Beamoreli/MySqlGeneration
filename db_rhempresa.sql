
/**Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.**/


CREATE DATABASE db_rhempresa;

use db_rhempresa;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
cargo varchar(255),
salario decimal(10,2),
idade  int(100),
folga boolean not null,

primary key(id)

);


select * from tb_funcionarios;

insert into tb_funcionarios (nome, cargo, salario, idade, folga)
	values ("Larissa", "Atendente", 4000, 29, false);
insert into tb_funcionarios (nome, cargo, salario, idade, folga)
	values ("Romeo", "Analista", 5000, 24, true);
insert into tb_funcionarios (nome, cargo, salario, idade, folga)
	values ("Almir", "Secretario", 1500, 25, true);
insert into tb_funcionarios (nome, cargo, salario, idade, folga)
	values ("Fabiana", "Gerente", 6000, 35, false);
insert into tb_funcionarios (nome, cargo, salario, idade, folga)
	values ("Andre", "Fiscal", 1000, 19, true);

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

set sql_safe_updates = 0;

update tb_funcionarios set salario = 1500 where id = 5;

delete from tb_funcionarios where id = 9;
