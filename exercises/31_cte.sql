-- DENTRE OS CLIENTES DE JANEIRO/2025, QUANTOS ASSISTIRAM O CURSO DE SQL?

WITH tb_clientes_janeiro AS (
SELECT
        DISTINCT idCliente
FROM transacoes
WHERE
        dtCriacao >= '2025-01-01' AND dtCriacao < '2025-02-01'
)

SELECT COUNT(DISTINCT t1.idCliente) AS clientesJaneiro,
        COUNT(DISTINCT t2.idCliente) AS clientesAgosto,
        1. * COUNT(DISTINCT t2.idCliente) / COUNT(DISTINCT t1.idCliente) * 100 AS pctRetorno,
        1 - 1. * COUNT(DISTINCT t2.idCliente) / COUNT(DISTINCT t1.idCliente) * 100 AS pctChurn

    
FROM tb_clientes_janeiro as t1

LEFT JOIN transacoes as t2
ON t1.idCliente = t2.idCliente
AND t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'