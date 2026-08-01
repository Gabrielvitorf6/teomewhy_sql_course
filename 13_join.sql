SELECT *
FROM transacao_produto AS t1

LEFT JOIN produtos AS T2
ON t1.IdProduto = t2.IdProduto;

/* Puxo todas as colunas de todas as tabelas consultadas com SELECT * sem especificar a tabela.

Posso usar o mesmo comando AS (Alias) das colunas nas tabelas, tirando a necessidade de 
declarar explicitamente nomes longos de tabelas dentro dos meus JOINS.*/

SELECT T1.*,
T2.DescNomeProduto
FROM transacao_produto AS t1

LEFT JOIN produtos AS T2
ON t1.IdProduto = t2.IdProduto;

/* Com t1.*, puxo todas as colunas da tabela t1. Com t2.DescNomeProduto, puxo somente essa coluna da tabela t2 */