-- QUAL MÊS TEVE MAIS LISTA DE PRESENÇA ASSINADA? (Todos os anos)

SELECT 
       strftime('%m', substr(DtCriacao, 1, 10)) AS mês,
       COUNT(DISTINCT t1.IdTransacao) AS qtdeTransacao

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao =  t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescNomeProduto = 'Lista de presença'

GROUP BY 1
ORDER BY 2 DESC;

-- QUAL ANO - MÊS TEVE MAIS LISTA DE PRESENÇA ASSINADA?

SELECT 
       substr(DtCriacao, 1, 7) AS mês,
       COUNT(DISTINCT t1.IdTransacao) AS qtdeTransacao

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao =  t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescNomeProduto = 'Lista de presença'

GROUP BY 1
ORDER BY 2 DESC;