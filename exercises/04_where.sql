-- Products that contains 'churn' in the name

-- 1° soluctions: find products with churn. Using LIKE i can pass a string and specify if i want that string on first or last chars,
--or even in any place of the value
SELECT idProduto,
        DescNomeProduto
        from produtos
        where DescNomeProduto LIKE '%churn%'

-- 2° Soluction: Find the three products with churn in the name using IN
SELECT idProduto,
        DescNomeProduto
        from produtos
        where DescNomeProduto in ('Churn_10pp','Churn_2pp','Churn_5pp')