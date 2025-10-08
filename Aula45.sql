create database comercio;

use comercio;

create table cliente(
    idcliente int primary key auto_increment,
    nome varchar(30) not null,
    sexo enum('M', 'F') not null,
    email varchar(50) unique,
    cpf char(11) unique
);

create table endereco(
    idendereco int primary key auto_increment,
    rua varchar(100) not null,
    bairro varchar(30) not null,
    cidade varchar(30) not null,
    estado char(2) not null
);

create table telefone(
    idtelefone int primary key auto_increment,
    tipo enum('residencial', 'comercial', 'celular') not null,
    numero varchar(15) not null
);

Chave estrangeira é a chave primária de uma tabela que vai até a outra tabela para fazer referência entre registros

Em relacionamento 1x1 a chave estrangeira fica na tabela mais fraca

Em relacionamento 1xN a chave estrangeira ficara sempre na cardinalidade N