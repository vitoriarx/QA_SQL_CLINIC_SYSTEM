#  Modelagem do Banco de Dados

##  Tabela: pacientes
Armazena informações dos pacientes da clínica.

Campos:
- id (identificador único)
- nome (nome completo do paciente)
- email (email do paciente - obrigatório)
- cpf (documento único do paciente)
- data_nascimento (data de nascimento)
- criado_em (data de criação do registro)

---

##  Tabela: profissionais
Armazena informações dos profissionais de saúde.

Campos:
- id (identificador único)
- nome (nome do profissional)
- especialidade (área de atuação)
- email (email do profissional)
- criado_em (data de criação do registro)

---

##  Tabela: consultas
Armazena o agendamento de consultas médicas.

Campos:
- id (identificador único)
- paciente_id (referência ao paciente)
- profissional_id (referência ao profissional)
- data_consulta (data e hora da consulta)
- status (agendada, realizada, cancelada)
- criado_em (data de criação do registro)

---

##  Tabela: pagamentos
Armazena os pagamentos relacionados às consultas.

Campos:
- id (identificador único)
- consulta_id (referência à consulta)
- valor (valor do pagamento)
- status (pago, pendente)
- data_pagamento (data do pagamento)

---

##  Relacionamentos

- consultas.paciente_id → pacientes.id
- consultas.profissional_id → profissionais.id
- pagamentos.consulta_id → consultas.id

---

##  Regras e Restrições

- cpf deve ser único (UNIQUE)
- email deve ser obrigatório (NOT NULL)
- valor do pagamento deve ser maior que zero
- consultas devem possuir paciente e profissional válidos
- status da consulta deve ser validado (enum controlado)