-- Usando uma subquerie dentro do FROM

SELECT * 
FROM (
        SELECT *
        FROM transacoes
        WHERE dtCriacao >= '2025-01-01'
)
WHERE DtCriacao < '2025-07-01';

/*Usar subqueries dentro do FROM pode ser útil para gerar tabelas com dados já filtrados para outras consultas, evitando
processamento de dados que não vão ser usados e vão ser filtrados mais uma vez pela próxima query.

EXEMPLO: caso eu queria filtrar transações que aconteceram em Julho de 2027 e que movimentaram mais de 100 pontos usando subqueries:

SELECT *
FROM (
        SELECT *
        FROM transacoes
        WHERE dtCriacao >= '2025-07-01' AND dtCriacao < '2025-08-01'
)
WHERE qtdePontos >= 100



Dentro da subquerie, já filtro todos os dados que não são de julho para nem serem levados para a próxima etapa da consulta.*/