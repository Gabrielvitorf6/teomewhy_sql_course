--Em 2024, quantas transações de Lovers tivemos?

SELECT  
    COUNT( DISTINCT t1.IdTransacao) AS qtdeTransacao

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.idTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2024-01-01'
AND t1.DtCriacao < '2025-01-01'
AND t3.DescCategoriaProduto = 'lovers';

/*O segundo JOIN nesse caso, fica a DIREITA do 1° JOIN*/

--Quantidade de transações por categoria em 2024

SELECT  t3.DescCategoriaProduto as categoriaProduto,
    COUNT( DISTINCT t1.IdTransacao) AS qtdeTransacao

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.idTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2024-01-01'
AND t1.DtCriacao < '2025-01-01'

GROUP BY 1
ORDER BY 2 DESC;

-- 3 Categorias com menos de 1000 transações em 2024

SELECT  t3.DescCategoriaProduto as categoriaProduto,
    COUNT( DISTINCT t1.IdTransacao) AS qtdeTransacao

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.idTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2024-01-01'
AND t1.DtCriacao < '2025-01-01'

GROUP BY t3.DescCategoriaProduto
HAVING COUNT( DISTINCT t1.IdTransacao) < 1000

ORDER BY COUNT( DISTINCT t1.IdTransacao);
