--Lista de pedidos realizados no fim de semana

SELECT idTransacao,
        datetime(substr(DtCriacao, 1, 19)) as 'dtHora',
        strftime('%w',datetime(substr(DtCriacao, 1, 19))) as 'DiaSemana'
        from transacoes
        where DiaSemana IN ('6','0')

        /* Nem todos os bancos de dados aceitam o uso do alias (AS) na clausula do where. Nesses casos, o correto seria
        reescrever a expressão de criação de coluna no where */