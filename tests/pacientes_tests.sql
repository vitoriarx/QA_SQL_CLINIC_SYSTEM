SELECT *
FROM pacientes
WHERE email IS NULL;


SELECT cpf, COUNT(*)
FROM pacientes
GROUP BY cpf
HAVING COUNT(*) > 1;


SELECT *
FROM pacientes
WHERE nome IS NULL OR nome = '';