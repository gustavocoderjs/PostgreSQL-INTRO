

SELECT Vendedor, Produto, Quantidade
RANK() OVER (PARTITION BY Vendedor ORDER BY Quantidade DESC) AS RANK FROM VENDAS 