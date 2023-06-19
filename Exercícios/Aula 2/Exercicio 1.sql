CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment primary key,
    nome varchar(255) not null,
    cor varchar(255) not null
);

INSERT INTO tb_classes(nome, cor)
values("Guerreiro", "Vermelho");
INSERT INTO tb_classes(nome, cor)
values("Arqueiro", "Verde");
INSERT INTO tb_classes(nome, cor)
values("Mago", "Azul");
INSERT INTO tb_classes(nome, cor)
values("Bruxo", "Roxo");
INSERT INTO tb_classes(nome, cor)
values("Assassino", "Laranja");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
	id bigint auto_increment primary key,
    nome varchar(255) not null,
    antecedente varchar(255),
    nivel int not null
);

ALTER TABLE tb_personagens ADD classes_id bigint;
ALTER TABLE tb_personagens ADD poderatk bigint;
ALTER TABLE tb_personagens ADD poderdef bigint;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
foreign key (classes_id) REFERENCES tb_classes(id);

INSERT INTO tb_personagens(nome, antecedente, nivel, classes_id, poderatk, poderdef)
values("Marcos", "Marinheiro", 1, 1, 2100, 1500);
INSERT INTO tb_personagens(nome, antecedente, nivel, classes_id, poderatk, poderdef)
values("Ariena", "Forasteira", 3, 5, 900, 3000);
INSERT INTO tb_personagens(nome, antecedente, nivel, classes_id, poderatk, poderdef)
values("Gabriel", "Herói do Povo", 2, 3, 1500, 800);
INSERT INTO tb_personagens(nome, antecedente, nivel, classes_id, poderatk, poderdef)
values("Kiara", "Nobre", 5, 4, 3500, 2300);
INSERT INTO tb_personagens(nome, antecedente, nivel, classes_id, poderatk, poderdef)
values("Vexal", "Ancião", 6, 2, 2900, 3200);
INSERT INTO tb_personagens(nome, antecedente, nivel, classes_id, poderatk, poderdef)
values("Symon", "Soldado", 4, 4, 2200, 1600);
INSERT INTO tb_personagens(nome, antecedente, nivel, classes_id, poderatk, poderdef)
values("José", "Cozinheiro", 1, 3, 1200, 1500);

SELECT * FROM tb_personagens WHERE poderatk > 2000;
SELECT * FROM tb_personagens WHERE poderdef BETWEEN 1000 and 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes on tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes on tb_classes.id = tb_personagens.classes_id WHERE classes_id = 3;



