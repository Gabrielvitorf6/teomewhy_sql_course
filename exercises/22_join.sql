-- Qual categoria tem mais produtos vendidos

SELECT t2.DescCategoriaProduto AS nomeProduto,
        COUNT(DISTINCT t1.IdTransacao) AS qtdeTransacao
FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

GROUP BY 1
ORDER BY 2 DESC;

/* Usamos a tabela fato transacao_produto para contar a quantidade de transações e buscamos o nome do produto na tabela produtos.
Como nem todas as transações são de produtos cadastrados na tabela produtos, tenho valores nulos. Esses valores nulos são agrupados no GROUP BY.*/


/* QUERY PARTINDO DA TABELA PRODUTOS, EXCLUINDO TRANSAÇÕES SEM PRODUTO CADASTRADO*/

SELECT t1.DescCategoriaProduto AS nomeProduto,
        COUNT(DISTINCT t2.IdTransacao) AS qtdeTransacao
FROM produtos AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdProduto = t2.IdProduto

GROUP BY 1
ORDER BY 2 DESC;