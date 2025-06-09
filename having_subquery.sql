
SELECT categoria, COUNT(*) AS total_produtos
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > (
    SELECT AVG(total)
    FROM (
        SELECT COUNT(*) AS total
        FROM produtos
        GROUP BY categoria
    ) AS subquery
);
