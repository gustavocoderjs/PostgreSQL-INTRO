-- Criando uma tabela de exemplo para demonstração
CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    preco_unitario NUMERIC(10,2),
    quantidade INTEGER,
    data_venda DATE
);

-- Inserindo dados de exemplo
INSERT INTO vendas (produto, preco_unitario, quantidade, data_venda) VALUES
    ('Notebook', 3250.99, 3, '2023-05-15'),
    ('Smartphone', 1899.50, 5, '2023-05-16'),
    ('Tablet', 799.99, 2, '2023-05-17'),
    ('Monitor', 1249.00, 4, '2023-05-18');

-- Consulta usando CONCAT e ROUND
SELECT 
    id,
    produto,
    preco_unitario,
    quantidade,
    -- CONCAT para juntar texto e valores
    CONCAT('R$ ', ROUND(preco_unitario, 1)) AS preco_arredondado,
    -- CONCAT com múltiplos valores e ROUND
    CONCAT(
        'Total: R$ ', 
        ROUND(preco_unitario * quantidade, 2),
        ' (', 
        quantidade, 
        ' unid.)'
    ) AS total_venda,
    -- CONCAT com formatação de data
    CONCAT('Venda em ', TO_CHAR(data_venda, 'DD/MM/YYYY')) AS data_formatada
FROM 
    vendas;
    