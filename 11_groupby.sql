-- Quantidade de transações por produto

-- SELECT
--         IdProduto,
--         count(*)
-- FROM transacao_produto
-- GROUP BY IdProduto

/* GROUP BY agrega informação para cada valor dentro da coluna no group by.

Então, se tenho uma tabela de transacoes e uso um sum(qtdePontos) junto de GROUP BY nomeCliente, eu somo a qtdePontos gastos em transacoes
para cada cliente DISTINTO*/


-- 10 Usuários com mais pontos em JULHO de 2025


SELECT idCliente,
        SUM(qtdePontos) as qtdePontosJulho,
        COUNT(*) AS qtdeTransacoes

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'

GROUP BY idCliente

ORDER BY qtdePontosJulho DESC

LIMIT 10