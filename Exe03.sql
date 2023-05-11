CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id_classe INT PRIMARY KEY,
nome_classe VARCHAR(30) NOT NULL,
tipo_classe VARCHAR(20)
);

CREATE TABLE tb_personagens (
id_personagem INT PRIMARY KEY,
nome_personagem VARCHAR(30) NOT NULL,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
id_classe INT NOT NULL,
CONSTRAINT fk_classe
FOREIGN KEY (id_classe)
REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes VALUES
(1, 'Guerreiro', 'Ataque'),
(2, 'Mago', 'Magia'),
(3, 'Arqueiro', 'Ataque à distância'),
(4, 'Cavaleiro', 'Defesa'),
(5, 'Ladrão', 'Furtividade');


INSERT INTO tb_personagens VALUES
(1, 'Ramon', 2500, 1500, 1),
(2, 'Kerci', 2200, 800, 2),
(3, 'Sarah', 1800, 1200, 1),
(4, 'Romario', 1900, 1100, 2),
(5, 'Siqueira', 2800, 500, 3),
(6, 'Josimar', 2000, 2000, 4),
(7, 'Diva', 2400, 800, 2),
(8, 'Joana', 2100, 1200, 1);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe WHERE tb_classes.nome_classe = 'Guerreiro';


