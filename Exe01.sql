
CREATE DATABASE RH;

USE RH;

CREATE TABLE colaboradores (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
cargo VARCHAR(50) NOT NULL,
salario FLOAT NOT NULL,
departamento VARCHAR(50) NOT NULL
);

INSERT INTO colaboradores (nome, idade, cargo, salario, departamento) VALUES
('Ramon Alves', 30, 'Analista de Sistemas', 3000, 'TI'),
('Maria Souza', 25, 'Assistente de RH', 1800, 'RH'),
('Kerciane Martins', 28, 'Gerente de Finanças', 5000, 'Financeiro'),
('Lucas Lima', 28, 'Coordenador de Marketing', 3500, 'Marketing'),
('Ana Costa', 22, 'Estagiária', 1200, 'RH');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 7500 WHERE id = 1;