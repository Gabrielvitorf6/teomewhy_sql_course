-- O HAVING FILTRA RESULTADOS APÓS O GROUP BY. É A CLAUSULA WHERE PORÉM PARA DADOS AGRUPADOS

-- 10 Usuários com mais pontos E QUE TEM MAIS DE 4000 pontos em JULHO de 2025

SELECT idCliente,
        SUM(qtdePontos) as qtdePontosJulho,
        COUNT(*) AS qtdeTransacoes

FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'

GROUP BY idCliente
HAVING qtdePontosJulho >= 4000

ORDER BY qtdePontosJulho DESC

LIMIT 10