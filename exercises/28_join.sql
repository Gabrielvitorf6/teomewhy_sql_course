-- CLIENTES MAIS ANTIGOS, TEM MAIS FREQUÊNCIA DE TRANSAÇÃO?

SELECT t1.idCliente,
       CAST(julianday('now') - julianday(substr(t1.DtCriacao, 1, 19)) AS INT) as diasCadastrado,
       COUNT(DISTINCT t2.IdTransacao) as qtdeTransacoes

FROM clientes as t1

LEFT JOIN transacoes AS t2
ON t1.idCliente = t2.idCliente

GROUP BY t1.idCliente, diasCadastrado 
ORDER by 2 DESC

-- QUERY GEROU A TABELA COM OS DADOS NECESSÁRIOS PARA EU PLOTAR O GRÁFICO DE DISPERSÃO