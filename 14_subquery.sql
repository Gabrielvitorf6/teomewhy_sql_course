-- As subqueries são consultas baseadas no resultado de outras consultas

-- Lista de transações com o produto resgatar ponei

SELECT *

FROM transacao_produto as t1

WHERE t1.IdProduto IN (
        SELECT IdProduto
        FROM produtos
        WHERE DescNomeProduto = 'Resgatar Ponei'
 )

/* Nesse caso, criamos uma subquerie que consulta o id do produto 'Resgatar Ponei' na tabela "produtos". A partir do resultado dessa consulta,
filtramos os resultados da consulta a tabela transacao_produto para que somente produtos com o id igual ao resultado da subquerie sejam retornados.

A lógica aqui é semelhante ao JOIN, pois filtro dados de uma tabela com base em outra tabela. Entretanto, as subqueries podem ser custosas pois dobramos as consultas
dentro da query.

As subqueries tendem a ser a melhor escolha quando trazem poucos dados.*/