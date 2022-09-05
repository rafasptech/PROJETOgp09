create database clientes;
use clientes;

create table cadastro(
id int primary key auto_increment,
nome varchar(50) not null,
empresa varchar(50),
dtfund datetime,
email varchar(30) not null, constraint chktipo check
(email in ('@')));

insert into cadastro (nome, empresa, dtfund, email) values
('vitor', 'safra', '2022-01-01-08:00:00', 'vitor.varela@sptech.school');
select * from cadastro;