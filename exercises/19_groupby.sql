-- QUAL DIA DA SEMANA TEM MAIS PEDIDOS EM 2025

SELECT 
    strftime('%w',substr(DtCriacao, 1, 10)) as DiaSemana,
    COUNT(DISTINCT IdTransacao) as qtdeTransacao

FROM transacoes

WHERE DtCriacao >= '2025-01-01' AND DtCriacao < '2026-01-01'

GROUP BY 1

ORDER BY 1;