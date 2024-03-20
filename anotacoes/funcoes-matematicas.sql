-- Valor absoluto (sem negativo)
SELECT ABS(valor) FROM pagamento;

-- Valor arredondado para cima
SELECT CEILING(valor) FROM pagamento;

-- Módulo do valor
SELECT CEILING(valor)%2 FROM pagamento;

-- Valor arredondado para baixo
SELECT FLOOR(valor) FROM pagamento;

-- Valor arredondado matematicamente
SELECT ROUND(valor) FROM pagamento;

-- Valor arredondado matematicamente com n casas decimais
SELECT ROUND(valor, 1) FROM pagamento;

-- Valor com n casas decimais
SELECT TRUNCATE(valor, 1) FROM pagamento; -- É necessário informas as casas decimais

-- Valor com potência
SELECT POW(valor, 2) FROM pagamento;

-- Valor aleatório
SELECT RAND();

-- Valor aleatório que seja entre 1 e o valor informado
SELECT RAND() * 10;