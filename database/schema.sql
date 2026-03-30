-- Tabela: pacientes
CREATE TABLE pacientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- Tabela: profissionais
CREATE TABLE profissionais (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- Tabela: consultas
CREATE TABLE consultas (
    id SERIAL PRIMARY KEY,
    paciente_id INT NOT NULL,
    profissional_id INT NOT NULL,
    data_consulta TIMESTAMP NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('Agendada', 'Realizada', 'Cancelada')),
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_paciente
        FOREIGN KEY (paciente_id)
        REFERENCES pacientes(id),

    CONSTRAINT fk_profissional
        FOREIGN KEY (profissional_id)
        REFERENCES profissionais(id)
);


-- Tabela: pagamentos
CREATE TABLE pagamentos (
    id SERIAL PRIMARY KEY,
    consulta_id INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL CHECK (valor > 0),
    status VARCHAR(20) NOT NULL CHECK (status IN ('Pendente', 'Pago', 'Cancelado')),
    data_pagamento DATE,

    CONSTRAINT fk_consulta
        FOREIGN KEY (consulta_id)
        REFERENCES consultas(id)
);