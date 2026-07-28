-- QUAL O VALOR MÉDIO DE PONTOS POSITIVOS POR DIA?

SELECT SUM(qtdePontos) as totalPontos,
        COUNT(DISTINCT substr(dtCriacao, 1, 10)) AS qtdeDiasDistintos,
        SUM(qtdePontos) / COUNT(DISTINCT substr(dtCriacao, 1, 10)) AS avgPontosDia
FROM transacoes
WHERE qtdePontos > 0;

-- CALCULANDO O VALOR MÉDIO POR DIA DA SEMANA

SELECT strftime('%w', substr(dtCriacao, 1, 10)) AS 'DiaSemana',
        AVG(qtdePontos) as avgPontos
FROM transacoes
WHERE qtdePontos > 0
GROUP BY 1
ORDER BY 1;

/* Quando passo GROUP BY 1, estou falando que o group by vai ser baseado na primera coluna do select, se passasse 2 o group by seria baseado na segunda, e assim por
diante.*/