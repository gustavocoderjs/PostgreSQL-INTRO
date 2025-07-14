

-- Tabela de clientes
CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,
  nome TEXT,
  cidade TEXT
);

-- Tabela de pedidos
CREATE TABLE pedidos (
  id SERIAL PRIMARY KEY,
  cliente_id INTEGER REFERENCES clientes(id),
  data_pedido DATE,
  valor NUMERIC
);


CREATE VIEW resumo_pedidos AS
SELECT
  c.nome AS cliente,
  p.data_pedido,
  p.valor
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;


SELECT * FROM resumo_pedidos WHERE valor > 100;
