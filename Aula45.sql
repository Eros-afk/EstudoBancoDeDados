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

/*Seleção, Projeção e Junção*/
select now() as data_atual;

select 2+2 as soma;

select 2+2 as soma, nome, now() from cliente;
/*Projeção -> É tudo o que queremos ver na tela*/

/*Seleção -> É um subconjunto do conjunto total de registros de uma tabela
A clausula de seleção é o where*/
select nome, sexo, email from cliente where sexo = 'F';
/*Select é a projeção where é a seleção*/

select numero from telefone where tipo = 'celular';


/*Junção -> Join*/

Select nome, email, idcliente from cliente;
Select id_cliente, bairro, cidade from endereco;

select nome, sexo, bairro, cidade from cliente inner join endereco on idcliente = id_cliente where sexo = 'F';

/*NOME, SEXO, EMAIL, TIPO, NUMERO*/
select nome, sexo, email, tipo, numero
from cliente
inner join telefone
on idcliente = id_cliente;

/*Nome, sexo, bairro, cidade, tipo, numer*/

select cliente.nome, cliente.sexo, endereco.bairro, endereco.cidade, telefone.tipo, telefone.numero 
from cliente
INNER JOIN endereco
on cliente.idcliente = endereco.id_cliente
inner JOIN telefone
on cliente.idcliente = TELEFONE.id_cliente;


select C.nome, C.sexo, E.bairro, E.cidade, T.tipo, T.numero 
from cliente C
INNER JOIN endereco E
on C.idcliente = E.id_cliente
inner JOIN telefone T
on C.idcliente = T.id_cliente;

insert into cliente values (Null, 'Mariana', 'M', Null, '56789876543');
insert into endereco values (Null, 'Rua A', 'Centro', 'São Paulo', 'SP', 7);
