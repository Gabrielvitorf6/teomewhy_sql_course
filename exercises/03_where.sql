-- Clients with more than 500 points
SELECT idCliente,
    qtdePontos
    FROM clientes
    where qtdePontos > 500
    order by qtdePontos