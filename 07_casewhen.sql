-- CRIANDO TÍTULOS DE USUÁRIOS BASEADO NA QUANTIDADE DE PONTOS, E SEPARANDO ENTRE PONEIS E MAGOS EM COLUNAS DIFERENTES

SELECT idCliente,
        qtdePontos,
        CASE
            WHEN qtdePontos <= 500 THEN 'Ponei'
            WHEN qtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN qtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN qtdePontos <= 10000 THEN 'Mago Mestre'
            WHEN qtdePontos > 10000 THEN 'Mago Premium'
        END AS NomeClasse,

        CASE
            WHEN qtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flPonei,

        CASE
            WHEN qtdePontos > 1000 THEN 1
            ELSE 0
        END AS flMago

FROM clientes

ORDER BY qtdePontos DESC

/*
Cada CASE, gera apenas UMA coluna nova, independente das comparações e colunas usadas nos WHEN.
*/

/*
Quando escrevemos o case when, o SQL testa as condições linha por linha, então ele testa a linha 11, depois a 12 etc. Depois que a
condição de uma linha foi testada e caso seja verdadeira, o case abaixo NÃO testa mais ela, então eu não preciso passar a condição testada acima de novo:

ANTES:
    WHEN qtdePontos > 1000 AND qtdePontos <= 5000 THEN 'Mago Mestre'
    WHEN qtdePontos > 5000 AND qtdePontos <= 10000 THEN 'Mago Mestre'
DEPOIS: 
    WHEN qtdePontos > 1000 AND qtdePontos <= 5000 THEN 'Mago Mestre'
    WHEN qtdePontos <= 10000 THEN 'Mago Mestre' -- NÃO TESTA CONDIÇÃO DE CIMA

Sabendo disso, é primordial a lógica do CASE e sua ordem para economizar tempo de processamento, evitar erros e manter um código legível.
*/

/*
Na última classe, poderia passar um ELSE, pois todos os valores abaixo de 10000 foram testados, e tudo acima pode ser considerado 'Mago Supremo'. O ELSE pode ser útil
em expressões complexas para detectar erros dentro do case, atribuindo valores específicos quando a linha não entrar em nenhuma condição esperada.
*/


