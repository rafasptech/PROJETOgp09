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
('12221023545','Bruno','bruno@email.com','Administrador'),
('23423344345','Rodrigo','rodrigo@email.com','Cliente'),
('34532233224','Suelen','suelen@email.com','Cliente'),
('34523123433','Natan','natan@email.com','Cliente');
select * from users;

create table sensores(
idSensor int auto_increment primary key,
galpao_silo varchar(50) not null,
unidade_responsavel varchar(50) not null,
temperatura decimal (10,2) ,
umidade decimal(10,2) ,
data_registro datetime,
situacao varchar(50)
constraint chkSituacao check(situacao in('ativo','inoperante','manutenção','ausente'))
)auto_increment = 1020;

insert into sensores(galpao_silo,unidade_responsavel, temperatura, umidade, data_registro,situacao) values
('100','A1',10.20,14.2,'2022-05-17 00:22:12','manutenção'),
('101','A1',10.20,13.2,'2022-05-17 00:23:56','inoperante'),
('102','A1',10.20,13.2,'2022-05-17 00:56:01','ativo'),
('103','A1',10.20,13.2,'2022-05-17 00:56:01','ativo'),
('104','A1',10.20,13.2,'2022-05-17 00:56:01','ativo'),
('200','A2',10.20,13.2,'2022-05-17 00:56:01','ativo'),
('201','A2',10.20,14.2,'2022-05-17 00:22:12','ativo'),
('202','A2',10.20,14.2,'2022-05-17 00:22:12','ativo'),
('203','A2',10.20,14.2,'2022-05-17 00:22:12','ativo'),
('204','A2',10.20,14.2,'2022-05-17 00:22:12','ativo');


create table unidade_respons(
idUnidade int auto_increment primary key,
qtdSensores int not null,
qtdTecnicos int not null,
areaAbrangida decimal(10,2) not null,
qtdEspacosSiloGalpao int not null,
tipoEspaco varchar(50),
constraint chkEspaco check(tipoEspaco in ('Silos','Galpões'))
)

insert into unidade_respons(qtdSensores,qtdTecnicos,areaAbrangida,qtdEspacosSiloGalpao,tipoEspaco) values
(34,54,222.22,43,'Silos'),
(23,43,342.32,54,'Galpões'),
(54,65,543.43,56,'Galpões'),
(56,43,573.34,46,'Silos'),
(65,65,345.63,35,'Galpões'),
(43,12,523.54,64,'Silos'),
(75,32,345.63,53,'Silos'),
(52,23,234.57,47,'Silos'),
(75,43,435.35,68,'Silos');
