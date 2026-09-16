create database db_clube;

use db_clube;

create table tb_socio (
codS int auto_increment not null, 
nomeS varchar (50) not null,
sexoS enum('Feminino' , 'Masculino' , 'Outro'),
data_NascimentoS date,
primary key(codS)
);

create table tb_dependete (
id int not null,
nomeDep varchar(50) not null,
codS int,
primary key (id),
foreign key (codS) references tb_socio(codS)
);

alter table tb_socio add CPF varchar(14);
alter table tb_socio add fone varchar(14);
alter table tb_socio add RG varchar(14), add endereco varchar(100);
alter table tb_socio add (nome_mae varchar(50), nome_pai varchar(50));
alter table tb_socio change nomeS nomeSocio varchar(100) not null;

drop table tb_dependete;
drop table tb_socio; 
drop database db_clube;

create table tb_dependete (
id int not null,
nomeDep varchar(50) not null,
codS int
);

alter table tb_dependente add primary key(id);
alter table tb_dependente add foreign key(codS) references tb_socio(codS);
