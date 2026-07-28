-- CRIANDO COLUNA SINALIZANDO FAIXA DE PONTOS GASTOS NA TRANSAÇÃO ENTRE BAIXO, MÉDIA E ALTO

SELECT IdTransacao,
        qtdePontos,
        CASE
            WHEN qtdePontos <= 10 THEN 'Baixo'
            WHEN qtdePontos <= 500 THEN 'Médio'
            WHEN qtdePontos > 500 THEN 'Alto'
        END AS 'VolumeTransacao'
FROM transacoes
ORDER BY qtdePontos DESC