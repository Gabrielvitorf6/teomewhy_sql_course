-- SOMA DE PONTOS MOVIMENTADOS DO MÊS DE JULHO, QUANTIDADE DE PONTOS GANHOS E QUANTIDADE DE PONTOS GASTOS

-- SELECT  
--         SUM(qtdePontos) AS SaldoTotal,

--         SUM(
--         CASE
--             WHEN qtdePontos > 0 THEN qtdePontos
--             END) AS qtdePontosPositivos,

--         SUM(
--         CASE
--             WHEN qtdePontos < 0 THEN qtdePontos
--             END) AS qtdePontosNegativos,

--         COUNT(
--             CASE
--             WHEN qtdePontos < 0 THEN qtdePontos
--             END) AS qtdeTransacoesNegativas,

--         COUNT(
--             CASE
--             WHEN qtdePontos > 0 THEN qtdePontos
--             END) AS qtdeTransacoesPositivas

-- from transacoes

-- WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'


-- ESTATÍSTICAS DO SALDO DE CONTA DOS CLIENTES


SELECT 
        ROUND(AVG(qtdePontos), 2) AS mediaCarteira,
        MIN(qtdePontos) as minQtdePontos,
        MAX(qtdePontos) as maxQtdePontos,
        SUM(flTwitch) AS flTwitch,
        SUM(flEmail) AS flEmail
from clientes