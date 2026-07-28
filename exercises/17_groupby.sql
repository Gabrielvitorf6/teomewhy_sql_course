-- QUANTOS PRODUTOS SÃO DE RPG?

SELECT COUNT(*)
FROM produtos
WHERE DescCategoriaProduto = 'rpg';

-- Caso eu queira ver a contagem para todos os outros produtos:

SELECT DescCategoriaProduto,
    COUNT(*)
FROM produtos
GROUP BY DescCategoriaProduto;

