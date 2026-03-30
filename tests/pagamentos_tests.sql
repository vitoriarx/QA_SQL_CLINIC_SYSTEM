
SELECT *
FROM pagamentos
WHERE valor <= 0;


SELECT *
FROM pagamentos
WHERE status IS NULL;


SELECT p.*
FROM pagamentos p
LEFT JOIN consultas c ON p.consulta_id = c.id
WHERE c.id IS NULL;