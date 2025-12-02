-- CLIENTES
INSERT INTO Cliente (nome, cpf, telefone, email) VALUES
('Ana Lima', '12345678901', '83999998888', 'ana@email.com'),
('Carlos Souza', '98765432100', '83988887777', 'carlos@email.com');

-- ANIMAIS
INSERT INTO Animal (nome, especie, raca, data_nascimento, id_cliente) VALUES
('Rex', 'Cachorro', 'Labrador', '2019-06-10', 1),
('Mimi', 'Gato', 'Siamês', '2021-01-20', 2);

-- VETERINÁRIOS
INSERT INTO Veterinario (nome, crmv, especialidade) VALUES
('Dr. João Martins', 'CRMV12345', 'Clínico Geral'),
('Dra. Paula Menezes', 'CRMV98765', 'Dermatologia');

-- CONSULTAS
INSERT INTO Consulta (data_consulta, horario, id_animal, id_veterinario, descricao) VALUES
('2025-02-10', '14:00:00', 1, 1, 'Consulta de rotina.'),
('2025-02-11', '09:00:00', 2, 2, 'Coceira intensa na pele.');

-- SERVIÇOS
INSERT INTO Servico (nome, preco) VALUES
('Vacinação', 120.00),
('Exame de Sangue', 90.00),
('Banho e Tosa', 70.00);

-- CONSULTA_SERVICO
INSERT INTO Consulta_Servico (id_consulta, id_servico) VALUES
(1, 1),
(1, 3),
(2, 2);
