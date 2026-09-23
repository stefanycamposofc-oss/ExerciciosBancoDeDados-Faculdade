create database db_clinica_flor;
use db_clinica_flor;

create table tb_medico(
CRM varchar(9)  not null  primary key,
 nomeMed varchar(100) not null
);

create table tb_paciente(
ID int not null auto_increment primary key, 
nome_pac varchar(100) not null
);

create table tb_consulta(
CRM varchar(9)  not null,
ID int not null,
data_consulta date,
hora_consulta time,
primary key(CRM,ID),
foreign key(CRM) references tb_medico (CRM),
foreign key(ID) references tb_paciente(ID)
);

insert tb_medico values ("1010/PA" , "José Maria");
insert tb_medico values ("1011/PA" , "Diego");
insert tb_medico values ("1012/SP" , "Diogo");
insert tb_medico values ("1013/Df" , "Gabriel");

select nomeMed
from tb_medico
where CRM='1010/PA';

insert tb_paciente values (null, "Josyane") , (null, "Stefany") , (null, "Ana") , (null, "Marcos") , (null, "Rafael");

select *
from tb_paciente;

insert tb_consulta values ("1010/PA" , 3 , "2026-10-01" , "8:30");
insert tb_consulta values ("1011/PA" , 1 , "2026-10-01" , "8:00");
insert tb_consulta values ("1010/PA" , 5 , "2026-10-01" , "9:30");
insert tb_consulta values ("1013/DF" , 2 , "2026-10-01" , "10:30");
insert tb_consulta values ("1012/SP" , 4 , "2026-10-01" , "11:30");

select *
from tb_consulta;
