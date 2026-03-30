--Arquivo: consultas_tests.sql
--Objetivo: Validar integridade e qualidade dos dados da tabela consultas

--CT01: Valida se todas as consultas possuem um paciente associado
--Regra: paciente_id deve existir na tabela pacientes
SELECT c.*
FROM consultas c
LEFT JOIN pacientes p ON c.paciente_id = p.id
WHERE p.id IS NULL;

--CT02: Valida se todas as consultas possuem um profissicional associado
--Regra: profissional_id deve existir na tabela profissionais
SELECT c.*
FROM consultas c
LEFT JOIN profissionais p ON c.profissional_id = p.id
WHERE p.id IS NULL;

--CT03: Valida que nao existe consultas sem status
--Regra: O campo de status nao pode ser nulo
SELECT *
FROM consultas
WHERE status IS NULL;

--CT04: Valida que nao existe consultas com data no passado muito distante
--Regra: A data da consulta nao pode ser anterior a 01/01/2000
SELECT *
FROM consultas
WHERE data_consulta < '2000-01-01';