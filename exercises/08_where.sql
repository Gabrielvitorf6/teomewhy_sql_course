-- Lista de clientes com 100 a 200 pontos
SELECT idCliente,  
        qtdePontos
        from clientes
        where qtdePontos >= 100 AND qtdePontos <= 200