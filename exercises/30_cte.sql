-- COMO QUE FOI A CURVA DE CHURN DO CURSO DE SQL?

-- Temos dois meios de ver a curva de churn: Contar quantas pessoas estão em cada aula do curso. Essa é a maneira mais fácil, mas não
-- consigo garantir que o resultado só inclua pessoas que estavam nos dias anteriores, misturando com alunos novos e perdendo parte da análise de churn. 

-- Essa query se assemelha mais a uma curva de público/engajamento do que propriamente uma curva de churn

-- SELECT 
--     substr(dtCriacao, 1, 10) as dtAula,
--     COUNT (DISTINCT idCliente) AS qtdeAlunos
-- FROM transacoes
-- WHERE dtCriacao >= '2025-08-25' AND dtCriacao < '2025-08-30'

-- GROUP BY 1
-- ORDER BY 1;



WITH tb_clientes_d1 AS (

        SELECT DISTINCT idCliente

        FROM transacoes

        WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

tb_join AS (
SELECT 

        substr(t2.DtCriacao, 1, 10) AS dtDia,
        COUNT(DISTINCT t1.idCliente) AS qtdeClientes,
        1. * COUNT(DISTINCT t1.idCliente) / (SELECT COUNT(*) FROM tb_clientes_d1) AS pctRetencao,  
        1 - 1. * COUNT(DISTINCT t1.idCliente) / (SELECT COUNT(*) FROM tb_clientes_d1) AS pctchurn

FROM tb_clientes_d1 AS t1

LEFT JOIN transacoes AS t2
USING (idCliente)

WHERE t2.DtCriacao >= '2025-08-25'
        AND t2.DtCriacao < '2025-08-30'

GROUP BY 1)

SELECT *
FROM tb_join;