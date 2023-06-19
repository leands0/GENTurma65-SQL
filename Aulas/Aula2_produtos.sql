CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int,
	preco decimal(6,2) not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("tomate",100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("limão",200, 2.87);

INSERT INTO tb_produtos(nome, quantidade, preco,categoria_id) 
values ("batata",1230, 36.00,1);
INSERT INTO tb_produtos(nome, quantidade, preco,categoria_id) 
values ("rabanete",200, 2.87,3);

-- criando uma coluna nova na tabela produtos
ALTER TABLE tb_produtos ADD categoria_id bigint;

-- alterando a estrutura da tabela produtos relacionando a tabela categorias
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);


SELECT * FROM tb_produtos;

truncate tb_produtos;



