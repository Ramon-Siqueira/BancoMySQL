CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
sexo VARCHAR(10) NOT NULL,
cpf VARCHAR(14) NOT NULL,
nota FLOAT(2) NOT NULL
);

INSERT INTO estudantes (nome, idade, sexo, cpf, nota)
VALUES ('João Silva', 16, 'M', '012.345.678-90', 7.5),
('Maria Santos', 18, 'F', '987.654.321-09', 10.0),
('Pedro Souza', 17, 'M', '111.222.333-44', 9.0),
('Carla Oliveira', 15, 'F', '555.666.777-88', 8.5),
('Fernando Pereira', 16, 'M', '333.444.555-66', 6.0),
('Julia Costa', 15, 'F', '777.888.999-00', 9.5),
('Marcos Rodrigues', 17, 'M', '444.555.666-77', 7.0),
('Mariana Ferreira', 16, 'F', '222.333.444-55', 8.0);

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 7.5 WHERE id = 5;