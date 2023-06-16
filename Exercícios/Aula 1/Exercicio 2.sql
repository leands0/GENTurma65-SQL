CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    cor VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL
);

INSERT INTO tb_produtos(nome, categoria, cor, preco)
values("Celular", "Eletrônicos", "Preto", 1500.00);
INSERT INTO tb_produtos(nome, categoria, cor, preco)
values("Air Fryer", "Eletrodomésticos", "Branco", 300.00);
INSERT INTO tb_produtos(nome, categoria, cor, preco)
values("Camisa Real Madrid", "Roupas", "Branca", 249.99), ("Geladeira", "Eletrodomésticos", "Vermelha", 2000.00),
("Notebook", "Eletrônicos", "Preto", 3000.00), ("Tênis", "Calçados", "Azul", 200.00),
("Cadeira de Escritório", "Móveis", "Preta", 500.01), ("Cadeira mais barata", "Móveis", "Preta", 499.99);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco>500.00;

SELECT * FROM tb_produtos WHERE preco<500.00;

UPDATE tb_produtos SET cor = "verde" WHERE id = 3;

