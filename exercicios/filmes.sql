# Na tabela filme, fazer:
	-- Quantos filmes estão cadastrados;
	-- Gere uma coluna virtual com as primeiras 3 letras do nome do filme;
    -- Qual o tempo médio de locação de filmes;
    -- Qual o total de vendas de locações em todos os tempos;
    -- Qual o valor médio de preço dos filmes;
    -- Qual o menor filme do catálogo;
    -- Qual o maior filme do catálogo;
    -- Qual o idioma do filme;
    -- Formatar a data de atualzação no padrão BR

SELECT * FROM filme;

-- Quantos filmes estão cadastrados
SELECT CONCAT('Quantidade de filmes: ', COUNT(*)) FROM filme;

-- Gere uma coluna virtual com as primeiras 3 letras do nome do filme
SELECT LEFT(titulo, 3) FROM filme;

-- Qual o tempo médio de locação de filmes
SELECT CONCAT('Tempo médio de locação: ', AVG(duracao_da_locacao)) FROM filme;

-- Qual o total de vendas de locações em todos os tempos
SELECT CONCAT('Total de vendas: ', SUM(preco_da_locacao)) FROM filme;

-- Qual o valor médio de preço dos filmes
SELECT CONCAT('Total de vendas: ', AVG(preco_da_locacao)) FROM filme;

-- Qual o menor filme do catálogo
SELECT CONCAT('Menor filme: ', MIN(duracao_do_filme)) FROM filme;

-- Qual o maior filme do catálogo
SELECT CONCAT('Maior filme: ', MAX(duracao_do_filme)) FROM filme;

-- Qual o idioma do filme
SELECT CONCAT('Filme: ', f.titulo, ' Idioma: ', i.nome) FROM filme f JOIN idioma i
	ON f.idioma_id = i.idioma_id;
    
-- Formatar a data de atualzação no padrão BR
SELECT CONCAT('Data de atualização: ', DATE_FORMAT(ultima_atualizacao, '%d/%m/%Y')) FROM filme;