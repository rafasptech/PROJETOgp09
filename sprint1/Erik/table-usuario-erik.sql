use sprint1;

create table cadastro( idCadastro int primary key auto_increment,
 nome varchar(50) not null, 
usuario varchar(20), constraint chkUsuario check
 (usuario in ('cliente','responsavel')),
email varchar(50) not null ); 

