CREATE DATABASE clinica_veterinaria;
USE clinica_veterinaria;

-- TABELA CLIENTE
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- TABELA ANIMAL
CREATE TABLE Animal (
    id_animal INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raca VARCHAR(50),
    data_nascimento DATE,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- TABELA VETERINARIO
CREATE TABLE Veterinario (
    id_veterinario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    crmv VARCHAR(20) UNIQUE NOT NULL,
    especialidade VARCHAR(100)
);

-- TABELA CONSULTA
CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    data_consulta DATE NOT NULL,
    horario TIME NOT NULL,
    id_animal INT NOT NULL,
    id_veterinario INT NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario)
);

-- TABELA SERVICO
CREATE TABLE Servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

-- TABELA CONSULTA_SERVICO (N:N)
CREATE TABLE Consulta_Servico (
    id_consulta INT,
    id_servico INT,
    PRIMARY KEY (id_consulta, id_servico),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);
