-- UPDATES

-- 1. Atualizar telefone de um cliente
UPDATE Cliente
SET telefone = '83977776666'
WHERE id_cliente = 1;

-- 2. Alterar o preço de um serviço
UPDATE Servico
SET preco = 150.00
WHERE id_servico = 1;

-- 3. Atualizar descrição de uma consulta
UPDATE Consulta
SET descricao = 'Consulta de rotina — atualizado.'
WHERE id_consulta = 1;

-- DELETES

-- 1. Remover um serviço da tabela Consulta_Servico
DELETE FROM Consulta_Servico
WHERE id_consulta = 1 AND id_servico = 3;

-- 2. Remover um animal (desde que não tenha dependências)
DELETE FROM Animal
WHERE id_animal = 1;

-- 3. Remover um cliente
DELETE FROM Cliente
WHERE id_cliente = 2;
