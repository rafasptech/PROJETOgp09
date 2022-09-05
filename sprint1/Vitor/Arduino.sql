create database sensor;
use sensor;

create table arduino(
id int primary key auto_increment,
nomeDono varchar(30),
tipoSensor varchar(30),
temperaturaUmidade decimal(10,2),
registro datetime
);

insert into arduino (nomeDono, tipoSensor, temperaturaUmidade, registro) values
('vitor', 'Umidade', '29.10', '2022-01-01-08:00:00');
select * from arduino;


 