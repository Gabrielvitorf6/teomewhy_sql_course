-- Lista de clientes com 100 a 200 pontos
SELECT idCliente,  
        qtdePontos
        from clientes

        --1° solução
        where qtdePontos >= 100 AND qtdePontos <= 200

        --2° solução
     -- WHERE qtdePontos BETWEEN 100 AND 200  