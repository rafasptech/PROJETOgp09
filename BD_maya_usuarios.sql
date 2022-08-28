create database pi;
use pi;
create table usuario (
	idUsuario int primary key auto_increment,
    nome varchar(50) not null unique,
    email varchar(50) not null unique,
    dtCadastro datetime,
    privAcesso varchar(15) default 'Cliente',
    constraint chkEmail check (email like '%@%'),
    constraint chkAcesso check (privAcesso in ('Administrador', 'Cliente'))
);

insert into usuario (nome, email, dtCadastro, privAcesso) values
	('Maya', 'maya.alexandre@sptech.school', '2022-08-23 15:40', 'Administrador'),
    ('Rafa', 'rafa@sptech.school', '2022-08-23 15:41', 'Administrador'),
    ('Bruno', 'bruno.takahashi@sptech.school', '2022-08,23 15:41', 'Administrador'),
    ('João', 'joao@cliente.com', '2022-08-23 15:45', default);

select * from usuario;

create table acessos (
	idAcesso int primary key auto_increment,
    idUsuario int,
    dtAcesso datetime,
    foreign key (idUsuario) REFERENCES usuario(idUsuario)
    );
   
desc usuario;
select * from usuario;
insert into acessos (idUsuario, dtAcesso) values
	(1, '2022-08-23 17:30'),
    (2, '2022-08-24 17:32');
   
select * from acessos;