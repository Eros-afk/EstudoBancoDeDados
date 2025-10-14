SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
    E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON IDCLIENTE = T.ID_CLIENTE;


+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         1 | João    | M    | joao@ig.com       | 12345678901 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 87866896 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 54768899 |
|         1 | João    | M    | joao@ig.com       | 12345678901 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | RES  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | RES  | 99766676 |
|         1 | João    | M    | joao@ig.com       | 12345678901 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 66687899 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 88687909 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        15 | EDUARDO | M    | NULL              | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
|        22 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 44522578 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+




SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
    E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';


/*12 13 18 19*/
SELECT * FROM CLIENTE WHERE IDCLIENTE IN (12,13,18,19);

UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE IN (12,13,18,19);


+-----------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL           | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         1 | João    | M    | joao@ig.com     | 12345678901 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 87866896 |
|         1 | João    | M    | joao@ig.com     | 12345678901 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | João    | M    | joao@ig.com     | 12345678901 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 66687899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM  | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 54768899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM  | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 88687909 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM   | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM   | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        15 | EDUARDO | M    | NULL            | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        16 | ANTONIO | M    | ANTONIO@IG.COM  | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
+-----------+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+


SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, 
    E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

UPDATE CLIENTE SET SEXO = 'M'
WHERE IDCLIENTE = 16;

+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | RES  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | RES  | 99766676 |
|        11 | GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | GIOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789  | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
|        22 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 44522578 |
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+

SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;

+------------+------+
| QUANTIDADE | SEXO |
+------------+------+
|         10 | M    |
|         10 | F    |
+------------+------+