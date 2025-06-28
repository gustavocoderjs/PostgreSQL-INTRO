

-- Agregação tradicional (colapsa as linhas em uma única linha)
SELECT 
    departamento,
    AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento;

-- Função de janela com OVER (mantém todas as linhas originais)
SELECT 
    nome,
    departamento,
    salario,
    AVG(salario) OVER (PARTITION BY departamento) AS media_salarial_departamento
FROM funcionarios;

SELECT