-- Quem iniciou o curso no primeiro dia, em média assistiu quantas aulas?

WITH tb_cliente_primeirodia AS (

            SELECT DISTINCT idCliente

            FROM transacoes

            WHERE substr(dtCriacao, 1, 10) = '2025-08-25' 

),

tb_clientes_aulas AS (

            SELECT DISTINCT idCliente,
            
            substr(dtCriacao, 1, 10) AS presenteDia
            
            FROM transacoes

            WHERE DtCriacao >= '2025-08-25' AND DtCriacao < '2025-08-30'

),

tb_join AS (
        SELECT t1.idCliente AS idCliente,
        COUNT(DISTINCT t2.presenteDia) AS qtdeAulas

        FROM tb_cliente_primeirodia as t1

        LEFT JOIN tb_clientes_aulas AS t2
        USING (idCliente)

        GROUP BY t1.idCliente
)

SELECT AVG(qtdeAulas),
       MAX(qtdeAulas),
       MIN(qtdeAulas)
FROM tb_join
