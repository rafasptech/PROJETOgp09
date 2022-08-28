create database projeto09;
use projeto09;
create table users(
idCliente int auto_increment primary key,
cpf varchar(11) not null unique,
nome varchar(50)not null,
e_mail varchar(50) not null unique,
tipoCredencial varchar(50) not null,
constraint chkEmail check ( e_mail like('%@%')),
constraint chkCred check (tipoCredencial in ('Administrador', 'Técnico' , 'Cliente','Outros'))
)auto_increment= 100 ;

alter table users add constraint chkCred check (tipoCredencial in('Administrador','Técnico','Cliente','Outros'));
insert into users(cpf,nome,e_mail,tipoCredencial) values

('12345678948','Carlos','carlos@chagas.com','Técnico'),
('23548976458','Pedro','pedro@gamer.com','Outros'),
('12546897123','Jonas','Jonas@pedreido.com','Outros'),
('12221023545','Bruno','bruno@email.com','Administrador');
select * from users;

create table sensores(
idSensor int auto_increment primary key,
galpao_silo varchar(50) not null,
unidade_responsavel varchar(50) not null,
temperatura double ,
umidade decimal(10,2) ,
data_registro datetime,
situacao varchar(50)
constraint chkSituacao check(situacao in('ativo','inoperante','manutenção','ausente'))
)auto_increment = 1020;

create table unidade_respons(
idUnidade int auto_increment primary key,
qtdSensores int not null,
qtdTecnicos int not null,
areaAbrangida double not null,
qtdEspacosSiloGalpao int not null,
tipoEspaco varchar(50),
constraint chkEspaco check(tipoEspaco in ('Silos','Galpões'))
)
