USE db_quitanda;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria (descricao) values ("Fruta");
INSERT INTO tb_categoria (descricao) values ("Verdura");
INSERT INTO tb_categoria (descricao) values ("Legume");

select * from tb_categoria;

SELECT nome, quantidade, preco, descricao from tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * from tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * from tb_produtos
LEFT JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * from tb_produtos
right JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;