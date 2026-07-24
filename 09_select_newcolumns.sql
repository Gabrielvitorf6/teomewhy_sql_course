SELECT idCliente,
    qtdePontos + 10 as 'QtdePontosPlus10',
    qtdePontos * 2 as 'QtdePontosDouble',

    datetime(substr(DtCriacao, 1 , 19)) as 'DtHora',

    date(substr(DtCriacao, 1 , 19)) as 'Data',

    time(substr(DtCriacao, 1 , 19)) as 'Hora',

    strftime('%w',datetime(substr(DtCriacao, 1 , 19))) AS 'DiaSemana',

    DtCriacao
    
    from clientes

LIMIT 10

/* Podemos criar uma coluna nova na consulta simplesmente ao colocar uma vírgula e especificar o que queremos nessa coluna nova 
(nesse caso qtdepontos + 10) . Isso é chamado de uma expressão.

Além disso, podemos aplicar funções dentro do select para modificar as colunas. Novamente,
as funções variam dependendo da engine que está sendo utilizada.

O substr pega os valores de X da posição Y até a Z. Date extrai a data, e time extrai a hora
*/