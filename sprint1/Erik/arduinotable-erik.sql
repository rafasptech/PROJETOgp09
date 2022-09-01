use sprint1;

create table dadosarduino ( idDados int primary key auto_increment, 
temperatura varchar(50), umidade varchar(50), dtHora datetime);

insert into dadosarduino values 
(1, '22°', '12%', '2022-09-05 00:00:00');