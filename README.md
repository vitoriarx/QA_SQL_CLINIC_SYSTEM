# Projeto QA Backend — SQL Testing em Sistema de Clínica

Projeto prático focado em **validação de dados e regras de negócio diretamente no banco de dados (PostgreSQL)**.
---

## Objetivo

Garantir a integridade dos dados e o correto funcionamento das regras de negócio através de testes realizados diretamente no banco.

---

## Contexto do Sistema

O sistema representa uma clínica médica com as seguintes entidades:

- Pacientes  
- Profissionais  
- Consultas  
- Pagamentos  

---
## Estratégia de Testes

### Testes de Validação (SELECT)

##### Verificam o estado do banco após operações:

- Pagamentos com valor inválido  
- Campos obrigatórios nulos  
- Registros sem relacionamento (órfãos)  

 **Exemplo:**

```sql
SELECT * FROM pagamentos WHERE valor <= 0;
```

####  Testes Negativos (INSERT inválido)

Simulam entradas incorretas para validar bloqueios do banco:

- Valores negativos ou zero  
- Chaves estrangeiras inexistentes


####  Resultado esperado:

```sql
ERROR: violates constraint
```
---
#### Testes de Integridade
##### Validam consistência entre tabelas:
* Consultas sem pagamento
* Pagamentos inconsistentes com datas
* Relacionamentos quebrados
---
#### Estrutura do Projeto
```bash
qa-sql-clinic-system/
├── database/
│   ├── schema.sql        # Estrutura do banco
│   ├── seed.sql          # Dados válidos
│   └── reset.sql         # Limpeza do banco
│
├── tests/
│   ├── pacientes_tests.sql
│   ├── consultas_tests.sql
│   ├── pagamentos_tests.sql
│   ├── pagamentos_negative_tests.sql
│   └── integridade_tests.sql
│
├── docs/
│   └── test_cases.md     # Casos de teste documentados
│
└── README.md
```

##  Como Executar

- Criar banco no PostgreSQL  

- Executar na ordem:

```sql
-- Criar estrutura
schema.sql
```
```sql
-- Resetar dados
reset.sql
```
```sql
-- Inserir dados
seed.sql
```

#### Executar os testes:
Arquivos da pasta tests/ <br> 
Testes negativos 'Erro de constraint'

### O que este projeto demonstra
-  Validação de dados diretamente no banco
-  Testes de integridade referencial
-  Aplicação de regras de negócio via SQL
-  Estratégia de testes backend
-  Capacidade de identificar inconsistências
--- 
#### Diferencial

Este projeto vai além de testes básicos, simulando:

- Cenários reais de falha
- Validação de integridade de dados
- Comportamento do banco sob erro

---
### Sobre mim

Vitória Melo <br>
Focada em testes e qualidade de software <br> 
Buscando oportunidade como QA Júnior  <br> 
