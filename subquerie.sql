


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

SELECT account_table.*
	FROM (
		SELECT *
		FROM transaction.sf_model_feature_2014_01
		WHERE day_of_week = 'Friday'
		) account_table
	WHERE account_table.availability = 'YES'