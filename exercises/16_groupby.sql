-- QUAL CLIENTE FEZ MAIS TRANSAÇÕES NO ANO DE 2024?

SELECT idCliente,
    COUNT(DISTINCT idTransacao) AS transacoes
FROM transacoes
WHERE dtCriacao >= '2024-01-01' AND dtCriacao < '2025-01-01'
GROUP BY idCliente
ORDER BY transacoes DESC

LIMIT 1;