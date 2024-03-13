-- Criação do banco de dados
CREATE DATABASE avaliacao;
USE avaliacao;

-- Criação da tabela de funcionário
CREATE TABLE funcionario(
	id INT AUTO_INCREMENT,
    nome VARCHAR(120),
    cpf VARCHAR(20),
    dt_nasc DATE,
    
    -- Chave primária
    CONSTRAINT pk_func PRIMARY KEY (id)
);

-- Criação da tabela de dependente
CREATE TABLE dependente(
	id INT AUTO_INCREMENT,
    id_func INT,
    nome VARCHAR(120),
    dt_nasc DATE,
    
    -- Chave primária
    CONSTRAINT pk_depen PRIMARY KEY (id),
    -- Chave estrangeira
    CONSTRAINT fk_func FOREIGN KEY (id_func) REFERENCES funcionario (id)
);

-- Criação dos funcionários
INSERT INTO funcionario (ID, NOME, CPF, DT_NASC)
	VALUES (default, 'Felipe', '111.111.111-90', '2004/07/14');
    
INSERT INTO funcionario (ID, NOME, CPF, DT_NASC)
	VALUES (default, 'Rogério', '121.211.112-50', '1997/03/26');
    
INSERT INTO funcionario (ID, NOME, CPF, DT_NASC)
	VALUES (default, 'William', '222.111.333-00', '2004/04/08');

-- Criação dos dependentes e relacionando com os funcionários
# Funcionário 1
INSERT INTO dependente (ID, ID_FUNC, NOME, DT_NASC)
	VALUES (default, 1 , 'Josineide', '1977/02/17');
INSERT INTO dependente (ID, ID_FUNC, NOME, DT_NASC)
	VALUES (default, 1 , 'Renato', '1975/02/22');

# Funcionário 2    
INSERT INTO dependente (ID, ID_FUNC, NOME, DT_NASC)
	VALUES (default, 2 , 'Milena', '2010/11/02');
   
# Funcionário 3   
INSERT INTO dependente (ID, ID_FUNC, NOME, DT_NASC)
	VALUES (default, 3 , 'Maurício', '2009/08/30');
INSERT INTO dependente (ID, ID_FUNC, NOME, DT_NASC)
	VALUES (default, 3 , 'Júlia', '2013/01/13');
INSERT INTO dependente (ID, ID_FUNC, NOME, DT_NASC)
	VALUES (default, 3 , 'Madalena', '2014/09/21');
    
-- Alteração do nome do dependente do 2º funcionário
UPDATE dependente
	SET nome = 'Sabrina' WHERE id = 3;
    
-- Deletar o dependente do 2º funcionário
DELETE FROM dependente
	WHERE id = 3;

-- Selecionar todos os funcionários e seus dependentes
SELECT * FROM funcionario f JOIN dependente d 
	ON d.id_func = f.id;
    
# Qual o tipo de relacionamento que foi realizado?
	-- Relação 1:N