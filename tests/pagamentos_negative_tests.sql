--Arquivo: pagamentos_negative_tests.sql
--Objetivo: Validar que o banco nao permite a insercao de dados invalidos na tabela pagamentos

--CT01: Inserir pagamentos com valor negativo
--Regra: Qualquer pagamento deve ter valor maior que zero e nao pode ser negativo
INSERT INTO pagamentos (consulta_id, valor, status, data_pagamento)
VALUES (1, -100, 'Pendente', NULL);

--CT02: Inserir pagamentos com um valor zero
--Regra: Qualquer pagamento deve ter valor maior que zero 
INSERT INTO pagamentos (consulta_id, valor, status, data_pagamento)
VALUES (2, 0, 'Pendente', NULL);

--CT03: Inserir pagamentos com consultas inexistentes
--Regra: consulta_id deve existir na tabela consultas (FOREIGN KEY)
INSERT INTO pagamentos (consulta_id, valor, status, data_pagamento)
VALUES (999, 100, 'Pendente', NULL);