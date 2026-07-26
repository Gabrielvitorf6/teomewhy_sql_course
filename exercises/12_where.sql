-- Lista de transações com o produto Resgatar Ponei

/* 1° Passo: Descobrir o ID do produto 'Resgatar Ponei'
SELECT IdProduto,
DescNomeProduto
from produtos
WHERE DescNomeProduto = 'Resgatar Ponei'
*/

-- 2° Passo: Query filtrando as transações

SELECT idTransacaoProduto,
        IdProduto
        from transacao_produto
        WHERE IdProduto = '15'

/* Isso poderia ser resolvido com JOIN também

SELECT idTransacaoProduto,
        idProduto