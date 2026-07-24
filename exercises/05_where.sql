--Lista de transações com apenas 1 ponto
select idCliente,
    QtdePontos
from transacoes
where QtdePontos = 1