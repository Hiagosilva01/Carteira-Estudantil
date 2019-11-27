create database carteira;
use carteira;
create table usuario(
    id_usuario int not null AUTO_INCREMENT,
    tipo_usuario varchar(15),
    primary key(id_usuario)
);

create table estudante(
    id_estudante int not null,
    id_usuario int not null,
    nome varchar(60),
    cpf varchar(11),
    instituicao varchar(100),
    curso varchar(40),
    datanasc date,
    email varchar(30),
    senha varchar(30),
    primary key(id_estudante),
    foreign key(id_usuario) references usuario(id_usuario)
);
