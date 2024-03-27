-- EXERCÍCIO
	-- Qtd de filmes por categoria;
    -- Tempo médio dos filmes do catálogo, por categoria;
    -- Qtd de filmes feitos por ator;
    -- Valor médio, maior e menor de vendas por funcionário;
    -- Lista de filmes da categoria G, M, W;
    -- Lista de atores que o nome inicia com A;
    -- Qtd de filmes por loja;

SELECT DISTINCT * FROM filme;    
-- Qtd de filmes por categoria
SELECT DISTINCT classificacao, COUNT(classificacao) FROM filme
	WHERE classificacao IN ('PG', 'G', 'NC-17', 'PG-13', 'R')
    GROUP BY classificacao;
    
 -- Tempo médio dos filmes do catálogo, por categoria
 SELECT DISTINCT classificacao, AVG(duracao_do_filme) FROM filme
	WHERE classificacao IN ('PG', 'G', 'NC-17', 'PG-13', 'R')
    GROUP BY classificacao;
    
-- Qtd de filmes feitos por ator
SELECT ator_id, COUNT(filme_id) FROM filme_ator
    GROUP BY ator_id;
    
SELECT * FROM pagamento;
-- Valor médio, maior e menor de vendas por funcionário
SELECT funcionario_id, AVG(valor) AS média, MAX(valor) AS maior, MIN(valor) AS menor FROM pagamento
	GROUP BY funcionario_id;

-- Lista de filmes da categoria G, M, W
SELECT DISTINCT titulo, classificacao FROM filme
	WHERE classificacao IN ('G', 'M', 'W')
    GROUP BY titulo, classificacao;

-- Lista de atores que o nome inicia com A
SELECT primeiro_nome AS nome FROM ator
	WHERE primeiro_nome LIKE 'A%';
    
-- Qtd de filmes por loja
SELECT loja_id, COUNT(filme_id) FROM inventario
	GROUP BY loja_id;