-- QUAIS CLIENTES MAIS PERDERAM PONTOS POR LOVER?

SELECT SUM(t1.qtdePontos) as qtdePontos,
        t1.idCliente

from transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescCategoriaProduto = 'lovers'
AND qtdePontos < 0

GROUP BY 2
ORDER BY 1