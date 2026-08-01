-- PRODUTO COM MAIS PONTOS TRANSACIONADOS

SELECT  idProduto,
        SUM(vlProduto * QtdeProduto) as totalPontos
FROM transacao_produto
GROUP BY IdProduto
ORDER BY totalPontos DESC;