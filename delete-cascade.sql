
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(id) ON DELETE CASCADE,
    descricao VARCHAR(255)
);

INSERT INTO clientes (nome) VALUES ('Maria');
INSERT INTO clientes (nome) VALUES ('Pedro');
INSERT INTO pedidos (cliente_id, descricao) VALUES (1, 'Pedido 1'), (1, 'Pedido 2');


DELETE FROM clientes WHERE id = 1;




