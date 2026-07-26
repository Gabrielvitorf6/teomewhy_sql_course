-- Lista de produtos que são chapéu
SELECT DescNomeProduto
        FROM produtos
        WHERE DescNomeProduto LIKE '%chapéu%'

        /* Caso eu quisesse todos os produtos que NÃO são chapéu, eu uso uma negação na expressão
        WHERE DescNomeProduto NOT like '%chapéu%'*/