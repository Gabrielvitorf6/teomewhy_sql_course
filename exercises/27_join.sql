-- DO ÍNICIO AO FIM DO CURSO (2025/08/25 A 2025/08/29), QUANTOS CLIENTES ASSINARAM A LISTA DE PRESENÇA?

-- QUAIS CLIENTES ASSINARAM A LISTA DE PRESENÇA NO DIA 2025/08/25?

SELECT COUNT( DISTINCT t1.idCliente)
FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.idTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescNomeProduto = 'Lista de presença' 
AND t1.DtCriacao >= '2025-08-25'
AND t1.DtCriacao <= '2025-08-29'
