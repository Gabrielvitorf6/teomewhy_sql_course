-- DOS CLIENTES QUE COMEÇARAM SQL NO PRIMEIRO DIA, QUANTOS CHEGARAM AO 5° DIA?

SELECT COUNT(DISTINCT t1.idCliente)

FROM transacoes AS t1

WHERE t1.idCliente IN (
            SELECT DISTINCT idCliente
            FROM transacoes
            WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)
AND substr(t1.DtCriacao, 1, 10) = '2025-08-29';

/* Na subquerie, filtro o resultado para pegar somente usuários que transacionaram no primeiro dia do curso,
e depois uso AND para filtrar só transações no dia 29-08-2025.

No final, nosso resultado filtrará somente usuários que estavam presentes no primeiro e no quinto dia de curso, e realizará uma contagem distinta
de clientes.

Ao contrário da subquerie filtrando a tabela de produtos, essa subquerie não é a melhor solução, pois realizamos uma sub consulta na nossa maior tabela para filtrar muitos
resultados outra consulta nessa tabela, então realizamos duas consultas na nossa maior tabela.*/