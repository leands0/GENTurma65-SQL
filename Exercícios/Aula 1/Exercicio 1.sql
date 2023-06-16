CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    idade INT,
    salario DECIMAL(6,2) NOT NULL
);

INSERT INTO colaboradores(nome, cargo, idade, salario)
values("Andreia", "Dev Java Jr.", 26, 3000.00);
INSERT INTO colaboradores(nome, cargo, idade, salario)
values("Bruno", "Dev Java Pleno.", 35, 5000.00);
INSERT INTO colaboradores(nome, cargo, idade, salario)
values("Clarice", "Product Owner", 32, 5500.00);
INSERT INTO colaboradores(nome, cargo, idade, salario)
values("Daniel", "Tech Lead", 35, 6000.00);
INSERT INTO colaboradores(nome, cargo, idade, salario)
values("Fabricio", "Dev Java Sr.", 32, 8000.00);

SELECT * FROM colaboradores;

SELECT nome FROM colaboradores WHERE salario > 2000.00;

SELECT nome FROM colaboradores WHERE salario < 2000.00;

UPDATE colaboradores SET salario = 1999.99 WHERE id=1;
