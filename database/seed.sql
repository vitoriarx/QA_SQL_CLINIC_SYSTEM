
INSERT INTO pacientes (nome, email, cpf, data_nascimento)
VALUES ('João Silva', 'joao.silva@example.com', '123.456.789-00', '1980-01-01'),
       ('Maria Oliveira', 'maria.oliveira@example.com', '987.654.321-00', '1985-05-05'),
       ('Carlos Santos', 'carlos.santos@example.com', '456.789.123-00', '1990-10-10'),  
       ('Ana Costa', 'ana.costa@example.com', '321.654.987-00', '1995-12-12'),
       ('Pedro Almeida', 'pedro.almeida@example.com', '789.456.123-00', '2000-01-01');



INSERT INTO profissionais (nome, especialidade, email)
VALUES ('Dr. Lucas Martins', 'Cardiologia', 'lucas.martins@example.com'),
       ('Dra. Fernanda Souza', 'Dermatologia', 'fernanda.souza@example.com'),
       ('Dr. Rafael Costa', 'Ortopedia', 'rafael.costa@example.com');


INSERT INTO consultas (paciente_id, profissional_id, data_consulta, status)
VALUES (1, 1, '2024-07-01 10:00:00', 'Agendada'),
       (2, 2, '2024-07-02 14:00:00', 'Agendada'),
       (3, 3, '2024-07-03 09:00:00', 'Agendada'),
       (5, 3, '2024-07-06 08:00:00', 'Agendada'); 


INSERT INTO pagamentos (consulta_id, valor, status, data_pagamento)
VALUES (1, 200.00, 'Pendente', NULL),
       (2, 150.00, 'Pendente', NULL),
       (3, 300.00, 'Pendente', NULL),
       (4, 250.00, 'Pendente', NULL); 


