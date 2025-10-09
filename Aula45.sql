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
    estado char(2) not null,
    id_cliente int unique,
    foreign key (id_cliente) references cliente(idcliente)
);

create table telefone(
    idtelefone int primary key auto_increment,
    tipo enum('residencial', 'comercial', 'celular') not null,
    numero varchar(15) not null,
    id_cliente int,
    foreign key (id_cliente) references cliente(idcliente)
);

Chave estrangeira é a chave primária de uma tabela que vai até a outra tabela para fazer referência entre registros

Em relacionamento 1x1 a chave estrangeira fica na tabela mais fraca

Em relacionamento 1xN a chave estrangeira ficara sempre na cardinalidade N

drop table cliente; /*Apaga a tabela*/

insert into cliente values (NUll, 'João', 'M', 'joao@ig.com', '12345678901');
INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOSA@IG.COM','5464553466');
INSERT INTO CLIENTE VALUES(NULL,'ANA','F','ANA@IG.COM','456545678');
INSERT INTO CLIENTE VALUES(NULL,'CLARA','F',NULL,'5687766856');
INSERT INTO CLIENTE VALUES(NULL,'JORGE','M','JORGE@IG.COM','8756547688');
INSERT INTO CLIENTE VALUES(NULL,'CELIA','M','JCELIA@IG.COM','5767876889');



INSERT INTO TELEFONE VALUES(NULL,'residencial','56576876',5);
INSERT INTO TELEFONE VALUES(NULL,'celular','87866896',1);
INSERT INTO TELEFONE VALUES(NULL,'comercial','54768899',2);
INSERT INTO TELEFONE VALUES(NULL,'residencial','99667587',1);
INSERT INTO TELEFONE VALUES(NULL,'celular','78989765',3);
INSERT INTO TELEFONE VALUES(NULL,'celular','99766676',3);
INSERT INTO TELEFONE VALUES(NULL,'comercial','66687899',1);
INSERT INTO TELEFONE VALUES(NULL,'residencial','89986668',5);
INSERT INTO TELEFONE VALUES(NULL,'celular','88687909',2);