# Teste de SQL - Sistema de clínica

## Contexto do que irá ser testado

Sistema de gestão de clínica médica responsável pelo cadastro de pacientes, profissionais, agendamento de consultas e controle de pagamentos.

## Entidades do sistema

- Pacientes
- Profissionais
- Consultas
- Pagamentos

## Regras de negócio

### Pacientes
- Deve possuir nome
- Deve possuir email
- CPF deve ser único

### Profissionais
- Deve possuir nome
- Deve possuir especialidade

### Consultas
- Deve estar vinculada a um paciente
- Deve estar vinculada a um profissional
- Deve possuir data válida

### Pagamentos
- Deve estar vinculado a uma consulta
- Valor deve ser maior que zero
- Deve possuir status (pago ou pendente)

## Cenários de teste (erros esperados)

- Paciente sem email
- CPF duplicado
- Consulta sem paciente
- Pagamento com valor negativo
- Consulta com data inválida
