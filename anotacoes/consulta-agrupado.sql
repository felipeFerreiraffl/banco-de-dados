-- GROUP BY: filtração de ID de um ou mais elementos
SELECT cliente_id, funcionario_id, AVG(valor) FROM pagamento
	WHERE data_de_pagamento >= '2005-05-01 00:00:00' AND data_de_pagamento < '2005-06-01 23:59:59'
    GROUP BY cliente_id, funcionario_id

	-- HAVING: filtração do agrupamento
    HAVING COUNT(valor) >= (SELECT AVG(valor) FROM pagamento)
    -- Ordenar as informações
	ORDER BY COUNT(valor);
    -- ORDER BY COUNT(valor); DESC -- Ordem decrescente

-- DISTINCT: sem duplicação de valores ID
SELECT DISTINCT cliente_id, funcionario_id, AVG(valor) FROM pagamento;

-- UNION: união de duas funções SELECT	
SELECT cidade AS lugar FROM cidade UNION SELECT pais AS lugar FROM pais;

-- IN
SELECT titulo, preco_da_locacao FROM filme
	WHERE classificacao IN ('R', 'G');

-- LIKE: seleciona apenas valores que começam ou terminam com determinada letra
	-- % após a letra: começa com
    SELECT titulo, preco_da_locacao FROM filme
		WHERE titulo LIKE 'R%';
    -- % antes da letra: termina em
	SELECT titulo, preco_da_locacao FROM filme
		WHERE titulo LIKE '%R';