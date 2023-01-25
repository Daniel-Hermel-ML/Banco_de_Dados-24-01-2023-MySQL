/*
Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte 
nome db_generation_game_online. O sistema trabalhará com as informações dos personagens do jogo. O sistema 
trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
*/
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

/*
1 - Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar 
os personagens do Game Online.
*/

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    posto 	VARCHAR(255),
    descricao 	VARCHAR(255),
    PRIMARY KEY(id)
    );

-- 4 - Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes(posto, descricao) 
values ("Soldado","Guerreiro");
INSERT INTO tb_classes(posto, descricao)
values ("Soldado","Guerreiro");
INSERT INTO tb_classes(posto, descricao) 
values ("Capitão","Comandante");
INSERT INTO tb_classes(posto, descricao) 
values ("Militar","Estrategista");
INSERT INTO tb_classes(posto, descricao) 
values ("Aspirante","Aprendiz");

SELECT * FROM tb_classes;
    
/*
2 - Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game 
Online.
*/    
    
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    ataque INT,
    defesa INT,
    inteligencia INT,
    PRIMARY KEY(id)
    );



SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

/*
3 - Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
*/

ALTER TABLE tb_personagens ADD classes_id BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT
FOREIGN KEY(classes_id) REFERENCES tb_classes(id);

/*
5 - Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a 
relação com a tabela tb_classes.
*/

-- 1
INSERT INTO tb_personagens(
	nome,ataque,defesa,inteligencia,classes_id)  
values ("Adão",6500,8200,7600,1);
-- 2
INSERT INTO tb_personagens(
	nome,ataque,defesa,inteligencia,classes_id)  
values ("Bento",1500,3200,4600,2);
-- 3
INSERT INTO tb_personagens(
	nome,ataque,defesa,inteligencia,classes_id)   
values ("Cris",7500,9200,8600,3);
-- 4
INSERT INTO tb_personagens(
	nome,ataque,defesa,inteligencia,classes_id)    
values ("Cristian",1500,3200,2600,4);
-- 5
INSERT INTO tb_personagens(
	nome,ataque,defesa,inteligencia,classes_id)    
values ("Daniel",8500,1000,9600,5);
-- 6
INSERT INTO tb_personagens(
	nome,ataque,defesa,inteligencia,classes_id)    
values ("Gabriel",5500,6200,7600,3);
-- 7
INSERT INTO tb_personagens(
	nome,ataque,defesa,inteligencia,classes_id)    
values ("Samuel",2500,6200,2600,4);
-- 8
INSERT INTO tb_personagens(
	nome,ataque,defesa,inteligencia,classes_id)    
values ("Francisco",5500,7200,6600,2);


-- START - consulta verificação

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

-- END - consulta verificação

/*
6 - Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
*/

SELECT * FROM tb_personagens WHERE ataque > 2000;

/*
7 - Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
*/

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

/*
8 - Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
*/

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

/*
9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da 
tabela tb_classes.
*/
-- START - consulta verificação

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

-- END - consulta verificação

SELECT nome,ataque,defesa,inteligencia,classes_id FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

/*
10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados 
da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: 
Todes os personagens da classe dos arqueiros).
*/

SELECT * FROM tb_personagens
INNER JOIN tb_classes on tb_personagens.classes_id = tb_classes.id where tb_classes.descricao = "Guerreiro";



