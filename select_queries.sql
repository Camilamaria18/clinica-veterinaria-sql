-- 1. Consultar todos os animais com seus tutores
SELECT A.nome AS animal, A.especie, C.nome AS tutor
FROM Animal A
JOIN Cliente C ON A.id_cliente = C.id_cliente;

-- 2. Consultas agendadas por veterinário
SELECT V.nome AS veterinario, Co.data_consulta, Co.horario, A.nome AS animal
FROM Consulta Co
JOIN Veterinario V ON Co.id_veterinario = V.id_veterinario
JOIN Animal A ON Co.id_animal = A.id_animal
ORDER BY Co.data_consulta;

-- 3. Serviços realizados em cada consulta
SELECT Co.id_consulta, S.nome AS servico, S.preco
FROM Consulta_Servico CS
JOIN Servico S ON CS.id_servico = S.id_servico
JOIN Consulta Co ON CS.id_consulta = Co.id_consulta;

-- 4. Animais de um tutor específico
SELECT nome FROM Animal
WHERE id_cliente = 1;

-- 5. Consultas recentes com limite
SELECT * FROM Consulta
ORDER BY data_consulta DESC
LIMIT 3;
