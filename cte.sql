

WITH nome_da_cte AS (
    SELECT coluna1, coluna2
    FROM tabela
    WHERE condição
)

SELECT *
FROM nome_da_cte;

--- 

WITH clientes_em AS (
    SELECT *
    FROM clientes
    WHERE Escolaridade = 'Ensino Médio'
)

SELECT *
FROM clientes_em;

---

WITH clientes_em AS (
    SELECT *
    FROM clientes
    WHERE Escolaridade = 'Ensino Médio'
)

SELECT *
FROM clientes_em
WHERE Renda_Anual >= 30000 AND Qtd_Filhos >= 1;