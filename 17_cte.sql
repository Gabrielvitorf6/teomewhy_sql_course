/* CTE: Common Table Expression.



Este código da aula de subqueries custava muito mais do que retornava, e isso poderia ser otimizado usando  CTEs
SELECT COUNT(DISTINCT t1.idCliente)

FROM transacoes AS t1

WHERE t1.idCliente IN (
            SELECT DISTINCT idCliente
            FROM transacoes
            WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)
AND substr(t1.DtCriacao, 1, 10) = '2025-08-29';*/

WITH tb_cliente_primeiro_dia AS (

        SELECT DISTINCT idCliente

        FROM transacoes
        
        WHERE substr(dtCriacao,1,10) = '2025-08-25'
        
),

tb_cliente_ultimo_dia AS (

        SELECT DISTINCT idCliente

        FROM transacoes

        WHERE substr(dtCriacao,1,10) = '2025-08-29'

),

tb_join AS (

        SELECT t1.idCliente AS idCliente_primeiro_dia,
        t2.idCliente AS idCliente_ultimo_dia

        FROM tb_cliente_primeiro_dia as t1

        LEFT JOIN tb_cliente_ultimo_dia as t2
        ON t1.idCliente = t2.idCliente

)

SELECT
       COUNT(idCliente_primeiro_dia) AS qtdeDiaUm,
       COUNT(idCliente_ultimo_dia) AS qtdeUltimoDia
FROM tb_join