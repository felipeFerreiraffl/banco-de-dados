CREATE DATABASE pizzaria;
USE pizzaria;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT,
    telefone VARCHAR(15),
    nome VARCHAR(120),
    rua VARCHAR(255),
    nr INT(6),
    bairro VARCHAR(120),
    
    CONSTRAINT pk_cliente PRIMARY KEY (id)
);

CREATE TABLE sabores (
    id INT AUTO_INCREMENT,
    nome VARCHAR(120),
    descricao VARCHAR(120),
    preco FLOAT(6, 2),
    
    CONSTRAINT pk_sabores PRIMARY KEY (id)
);

CREATE TABLE pedido (
    id INT AUTO_INCREMENT,
    id_cliente INT,
    dt_pedido DATE,
    
    CONSTRAINT pk_pedido PRIMARY KEY (id),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id)   
);

CREATE TABLE pedido_itens (
    id INT AUTO_INCREMENT,
    id_sabor INT,
    id_pedido INT,
    preco FLOAT(6, 2),
    
    CONSTRAINT pk_itens PRIMARY KEY (id), 
    CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    CONSTRAINT fk_pedido_sabor FOREIGN KEY (id_sabor) REFERENCES sabores(id)
);

-- Inserção de clientes
INSERT INTO cliente (id, nome, telefone, rua, bairro, nr)
	VALUES (default, 'Felipe Ferreira', '(11) 94656-7459',
			'Rua Dona Divina Pereira Chaves', 'Serraria' , 91);

INSERT INTO cliente (id, nome, telefone, rua, bairro, nr)
	VALUES (default, 'João Jones', '(11) 92222-2221',
			'Rua João Jones da Silva', 'Diamantina' , 23);
            
INSERT INTO cliente (id, nome, telefone, rua, bairro, nr)
	VALUES (default, 'Reginaldo', '(11) 90083-2019',
			'Rua Pedreira', 'São Paulo' , 600);

-- Inserção de sabores
INSERT INTO sabores (id, nome, descricao, preco)
	VALUES (default, 'Portuguesa', 'Queijo - Cebola - Salame', 40.00);
    
INSERT INTO sabores (id, nome, descricao, preco)
	VALUES (default, 'Frango com Catupiry', 'Frango desfiado - Catupiry', 35.00);

-- Inserção de pedidos
INSERT INTO pedido (id, id_cliente, dt_pedido)
	VALUES (default, 1, '2024-01-19');

INSERT INTO pedido (id, id_cliente, dt_pedido)
	VALUES (default, 2, '2024-01-23');

INSERT INTO pedido (id, id_cliente, dt_pedido)
	VALUES (default, 3, '2024-02-08');

-- Inserção dos itens e sabores dos pedidos
INSERT INTO pedido_itens (id, id_sabor, id_pedido, preco)
	VALUES (default, 2, 1, 35.00);

INSERT INTO pedido_itens (id, id_sabor, id_pedido, preco)
	VALUES (default, 1, 2, 40.00);
INSERT INTO pedido_itens (id, id_sabor, id_pedido, preco)
	VALUES (default, 2, 2, 35.00);
    
INSERT INTO pedido_itens (id, id_sabor, id_pedido, preco)
	VALUES (default, 1, 3, 35.00);
    
SELECT * FROM pedido_itens;