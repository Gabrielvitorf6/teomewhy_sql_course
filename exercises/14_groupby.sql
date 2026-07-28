-- QUAL CLIENTE JUNTOU MAIS PONTOS POSITIVOS EM 2025-05?

SELECT idCliente,
        SUM(qtdePontos) as qtdePontos
FROM transacoes
WHERE DtCriacao >= '2025-05-01' AND DtCriacao < '2025-06-01'
AND qtdePontos > 0
GROUP BY idCliente
ORDER BY qtdePontos DESC
LIMIT 1