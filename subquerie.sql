


-- Subquery na cláusula WHERE 

SELECT nome, salario
FROM funcionarios
WHERE salario > (SELECT AVG(salario) FROM funcionarios);

-- Subquery na cláusula FROM 

SELECT nome, media_salarios.salario_medio
FROM funcionarios, (SELECT AVG(salario) AS salario_medio FROM funcionarios) AS media_salarios;

-- Subsquery na cláusula SELECT 

SELECT nome, salario, (SELECT MAX(salario) FROM funcionarios) AS maior_salario
FROM funcionarios;

-- 

