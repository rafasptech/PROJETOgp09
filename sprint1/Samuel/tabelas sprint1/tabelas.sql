create database sprint01;
use sprint01;
----------------------------------------------------------------------------------------------------------------------
create table cadastro(
idcadastro int primary key auto_increment,
nomecompleto varchar(50) not null,
cpf varchar(20) not null,
cep varchar(20) not null,
email varchar(50), CONSTRAINT chkemail CHECK (email LIKE '%@%'),
senha varchar(20),
datacadastro datetime
);

insert into cadastro(nomecompleto, cpf, cep, email , senha , datacadastro) values
('samuel bryan' , '010.102.202-04' , '02020-020' , 'samuelbryan@gmail.com' , '5555555',  '2016-01-01 08:00:00');

insert into cadastro(nomecompleto, cpf, cep, email , senha , datacadastro) values
('guilherme oliveira' , '430.532.202-80' , '39690-020' , 'guilhermeoliveira@gmail.com' , '666666',  '2000-06-01 04:39:00'),
('maria romero' , '867.162.754-23' , '84656-300' , 'mariaromero@gmail.com' , '5555555',  '2016-07-01 02:43:01');

insert into cadastro(nomecompleto, cpf, cep, email , senha , datacadastro) values
('izilda brasil' , '560.044.202-80' , '54820-030' , 'izildabrasil@gmail.com' , '94750js',  '1980-09-04 017:40:00'),
('emilene cristina' , '956.152.344-23' , '84656-300' , 'emilenecristina@gmail.com' , 'gd5ds7253',  '2021-07-01 12:30:00');

update cadastro set senha = 'r0mer0bololo' where idcadastro = 3;
------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------
create table dadosarduino (
iddados int primary key auto_increment,
temperatura decimal,
umidade decimal,
datainsertdados datetime
);
 
insert into dadosarduino(temperatura, umidade, datainsertdados) values
(15.2 , 54.2,'2022-08-30 18:35:00'), 
(17.7 , 60.0,'2022-08-23 19:25:00'),
(26.3 , 56.4,'2022-08-02 20:15:00'),
(23.9 , 44.9,'2022-08-15 21:05:00');

alter table dadosarduino modify temperatura decimal (3,1);
alter table dadosarduino modify umidade decimal (3,1);

------------------------------------------------------------------------------------------------------------------------
																		
select * from dadosarduino ;	
select * from cadastro ;	
							
select * from cadastro where cep like '%20';				
alter table cadastro add column qia int;
alter table cadastro drop column qia;


