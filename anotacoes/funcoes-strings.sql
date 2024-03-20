# Funções de caracteres

-- JOIN: código para juntar duas tabelas
SELECT * FROM cliente c JOIN endereco e
		ON c.endereco_id = e.endereco_id; -- Amarração por ID	

-- Concatenação de strings (VARCHAR)
SELECT CONCAT('Destino: ', c.primeiro_nome, c.ultimo_nome, 'Endereço: ', e.endereco);

-- Coloca todas as palavras em letras minúsculas
SELECT LOWER(e.endereco);

-- Coloca todas as palavras em letras maiúsculas
SELECT UPPER(e.endereco);

-- Seleciona os caracteres da direita para esquerda
SELECT RIGHT(e.endereco, 3);

-- Seleciona os caracteres da esquerda para direita
SELECT LEFT(e.endereco, 3);

# Funcoes de data e hora

-- Mostrar a data atual
SELECT CURDATE();

-- Mostrar a hora atual
SELECT CURTIME();

-- Mostrar a data de criação
SELECT DATEDIFF(CURDATE(), data_criacao) FROM cliente;

-- Definir um formato de data
SELECT DATE_FORMAT(data_criacao, '%d/%m/%Y') FROM cliente