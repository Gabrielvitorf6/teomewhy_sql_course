-- A CLAUSULA DISTINCT RETORNA VALORES DISTINTOS DENTRO DE UMA COLUNA

-- Quantas transações que aconteceram em JULHO de 2025

SELECT
        count(DISTINCT idTransacao)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'

-- Quantas transações aconteceram e Quantos CLIENTES transacionaram em JULHO de 2025

SELECT
        count(DISTINCT idTransacao),
        count( DISTINCT idCliente)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'