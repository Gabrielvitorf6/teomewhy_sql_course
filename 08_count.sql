SELECT
    count(*),
    Count(1),
    count(idCliente)
from clientes

/*
    Count(*) conta quantas linhas a tabela tem, sendo a melhor opção na maioria das vezes.
    Count(1) conta observações da coluna que criei com 1 em todas as linhas. Na maioria das vezes funciona igual o Count(*).
    já o count(idCliente) conta quantos valores NÃO NULOS tem na coluna, sendo mais custoso e podendo falhar em casos de valores nulos na
    coluna.

Em bancos de dados com metadados (como pySpark), muitas das vezes o BD já sabe quantas linhas temos na tabela, e ao usar o
count(*) ou count(1) o resultado já está processado. Agora quando usamos o o count(idCliente), o BD precisa processar todos os elementos
da coluna para realizar a contagem.
*/

SELECT DISTINCT
FROM clientes --Retorna todas as linhas únicas

/* O DISTINCT trás registros únicos de LINHAS, não colunas. Então, nesse comando

SELECT DISTINCT idCliente FROM clientes

o meu resultado vai ser uma coluna com todos os IDs distintos (Nesse caso todas as linhas, pois cada linha contém um id único)

Porém, se eu usar o DISTINCT e selecionar mais de uma coluna com valores que não são únicos, o SQL vai retornar TODAS AS COMBINAÇÕES DISTINTAS DE LINHAS PARA ESSAS COLUNAS:

Tenho as colunas flTwitch e flEmail contém flags sinalizando presença (0 e 1) e quero saber os valores em cada uma delas

A query "SELECT DISTINCT flTwitch from clientes" retorna os valores distintos das linhas (0,1), pois essa coluna só tem algum desses dois valores em todas as linhas

Agora, se eu usar o DISTINCT para as colunas flTwitch e flEmail

A query "SELECT DISTINCT flTwitch,flEmail from clientes" retorna as linhas distintas (ou combinações distintas) entre valores de flTwitch e flEmail:

0 0
1 0
0 1
1 1

*/

SELECT 
        COUNT(DISTINCT idCliente)
FROM clientes

-- Podemos usar o DISTINCT dentro do COUNT para contar as observações de valores distintos da coluna