-- QUAL O PRODUTO MAIS TRANSACIONADO

SELECT COUNT(DISTINCT idTransacaoProduto) AS qtdeTransacao,
        IdProduto
FROM transacao_produto

GROUP BY IdProduto
ORDER BY qtdeTransacao DESC
LIMIT 1;

