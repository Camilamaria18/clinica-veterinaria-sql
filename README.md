Este repositório contém a implementação do banco de dados para um sistema de clínica veterinária, seguindo o modelo lógico e o DER desenvolvidos nas atividades anteriores.

O objetivo é demonstrar:

Criação das tabelas do banco de dados

Inserção de dados reais (INSERT)

Manipulação dos dados (SELECT, UPDATE, DELETE)

Aplicação dos conceitos de integridade referencial e normalização

🗂️ Estrutura do Repositório
📁 /scripts
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── selects.sql
│   ├── updates.sql
│   ├── deletes.sql
│
📄 README.md

🛠️ Ferramentas Utilizadas

Você pode executar este projeto usando qualquer um dos dois:

✔️ MySQL Workbench

Versão recomendada: 8.x

ou

✔️ PostgreSQL + PGAdmin

Versão recomendada: PostgreSQL 14+ / PGAdmin 6+

🧱 1. Script de Criação das Tabelas (create_tables.sql)

Inclui:

criação das tabelas

Tutor

Animal

Veterinario

Servico

Atendimento

Atendimento_Servico

definição de chaves primárias e estrangeiras

tipos de dados de cada campo

integridade referencial

🐶 2. Script de Inserção de Dados (insert_data.sql)

Contém inserções reais e coerentes:

5 tutores

7 animais

4 veterinários

5 serviços

6 atendimentos

vínculos atendimento–serviço

🔍 3. Consultas SQL (selects.sql)

Inclui entre duas e cinco consultas com:

JOIN entre tabelas

WHERE

ORDER BY

LIMIT

consultas úteis como:

lista de animais atendidos por cada veterinário

atendimentos com serviços

tutores e seus animais

✏️ 4. Atualizações no Banco (updates.sql)

Contém 3 comandos UPDATE, como:

atualizar telefone de tutor

corrigir peso de animal

atualizar valor de serviço

🗑️ 5. Exclusões no Banco (deletes.sql)

Contém 3 comandos DELETE, como:

excluir atendimento específico

remover serviço não utilizado

excluir tutor sem animais (controle por chave estrangeira)

▶️ Como Executar

Abra o MySQL Workbench ou PGAdmin

Crie um banco de dados vazio

Execute nesta ordem:

1. create_tables.sql
2. insert_data.sql
3. selects.sql (opcional)
4. updates.sql (opcional)
5. deletes.sql (opcional)

📄 Observação Final

Os scripts respeitam:

modelo lógico normalizado

chaves primárias e estrangeiras

integridade referencial

coerência com o mini-mundo definido na atividade 1
