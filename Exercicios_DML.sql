/*Relatório geral todos os clientes*/
select * from cliente;
+-----------+---------+------+-------------------+-------------+
| idcliente | nome    | sexo | email             | cpf         |
+-----------+---------+------+-------------------+-------------+
|         1 | João    | M    | joao@ig.com       | 12345678901 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |
|         4 | CLARA   | F    | NULL              | 5687766856  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |
|         6 | CELIA   | M    | JCELIA@IG.COM     | 5767876889  |
|         7 | Mariana | F    | NULL              | 56789876543 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|        10 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |
|        11 | GIOVANA | F    | NULL              | 0876655     |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    |
|        14 | LORENA  | M    | NULL              | 774557887   |
|        15 | EDUARDO | M    | NULL              | 54376457    |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        22 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+

/*Relatório de homens*/
select * from cliente where sexo = 'M';
+-----------+---------+------+-------------------+-------------+
| idcliente | nome    | sexo | email             | cpf         |
+-----------+---------+------+-------------------+-------------+
|         1 | João    | M    | joao@ig.com       | 12345678901 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |
|         6 | CELIA   | M    | JCELIA@IG.COM     | 5767876889  |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|        10 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    |
|        14 | LORENA  | M    | NULL              | 774557887   |
|        15 | EDUARDO | M    | NULL              | 54376457    |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   |
+-----------+---------+------+-------------------+-------------+

/*Relatório de mulheres*/
select * from cliente where sexo = 'F';
+-----------+---------+------+-------------------+-------------+
| idcliente | nome    | sexo | email             | cpf         |
+-----------+---------+------+-------------------+-------------+
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |
|         4 | CLARA   | F    | NULL              | 5687766856  |
|         7 | Mariana | F    | NULL              | 56789876543 |
|        11 | GIOVANA | F    | NULL              | 0876655     |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        22 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+

/*Quantidade de homens e mulheres*/
select sexo, count(*) as quantidade from cliente group by sexo;
+------+------------+
| sexo | quantidade |
+------+------------+
| M    |         13 |
| F    |          7 |
+------+------------+

/*IDS e Emails das mulheres que morem no centro do Rio de Janeiro e não tem celular*/
select c.idcliente, c.email from cliente c 
where c.sexo = 'F' 
and c.idcliente in (select e.idcliente from endereco e where e.bairro = 'Centro' and e.cidade = 'Rio de Janeiro') 
and c.idcliente not in (select f.idcliente from telefone f 
where f.tipo = 'Celular');  