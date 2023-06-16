CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL, 
    materia_preferida VARCHAR(255),
    nota DECIMAL(4,2) NOT NULL
);

INSERT INTO tb_estudantes(nome, idade, materia_preferida, nota)
values("Ana", 16, "História", 8.8);
INSERT INTO tb_estudantes(nome, idade, materia_preferida, nota)
values("Bruno", 15, "Matemática", 7.0);
INSERT INTO tb_estudantes(nome, idade, materia_preferida, nota)
values("Cesar", 17, "Geografia", 5.5), ("Daniela", 16, "Educação Física", 9.5),
("Cassandra", 17, "Língua Portuguesa", 10.00), ("Vitor", 15, "Filosofia", 4.5),
("Renan", 16, "Biologia", 3.9), ("Igor", 16, "Física", 6.00);

SELECT nome FROM tb_estudantes WHERE nota > 7.0;

SELECT nome FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.5 WHERE id = 2;