-- CLIENTES MAIS ANTIGOS, TEM MAIS FREQUÊNCIA DE TRANSAÇÃO?

SELECT t1.idCliente,
       CAST(julianday('now') - julianday(substr(t1.DtCriacao, 1, 19)) AS INT) as diasCadastrado,
       COUNT(DISTINCT t2.IdTransacao) as qtdeTransacoes

FROM clientes as t1

LEFT JOIN transacoes AS t2
ON t1.idCliente = t2.idCliente

GROUP BY t1.idCliente, diasCadastrado 
ORDER by 2 DESC;

-- QUERY GEROU A TABELA COM OS DADOS NECESSÁRIOS PARA EU PLOTAR O GRÁFICO DE DISPERSÃO

SELECT t1.idCliente,
       CAST(julianday('now') - julianday(substr(t1.DtCriacao, 1, 19)) AS INT) as diasCadastrado,
       COUNT(DISTINCT t2.IdTransacao) as qtdeTransacoes

FROM clientes as t1

LEFT JOIN transacoes AS t2
USING (idCliente)

GROUP BY t1.idCliente, diasCadastrado 
ORDER by 2 DESC;

-- O comando USING pode ser usado em JOINs quando as chaves em ambas as tabelas tem o mesmo nome. O USING tbm só retorna uma coluna no JOIN, invés de duplicar, melhorando a legibilidade do código e resultado da consulta