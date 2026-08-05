-- A CLAUSULA WHERE FILTRA AS LLINHAS QUE SÃO OU NÃO RETORNADAS NA CONSULTA COM BASE EM UMA OU MAIS CONDIÇÕES

SELECT *
from produtos
where DescCategoriaProduto = 'rpg'
limit 10

/* usamos aspas simples para comparar o valor do campo, em outros BDs usamos
aspas duplas para comparar CAMPOS invés de valores*/