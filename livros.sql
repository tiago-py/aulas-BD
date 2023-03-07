create database livraria;

use livraria;

create table editora(
    id int not null,
    nome varchar(80) not null,
    email varchar(120) not null,
    primary key(id)
);

create table livros(
    id int not null,
    titulo varchar(80) not null,
    preco float not null,
    primary key(id)
);

insert into editora(id,nome,email)values
(12345, "Titulo livro","editorateste@gmail.com"),
(23456, "Titulo livro2","editorateste2@gmail.com"),
(34567, "Titulo livro3","editorateste3@gmail.com");

insert into livros(id,titulo,preco)values
(12345, "Titulo livro","56.99"),
(23456, "Titulo livro2","25.89"),
(34567, "Titulo livro3","32.80");

select * from livros;
select * from editora;

UPDATE livros
SET preco = '22.50'
WHERE id = 12345;

UPDATE editora
SET nome = 'Titulo'
WHERE id = 12345;

select * from livros;
select * from editora;

DELETE FROM livros
WHERE id = 12345;

DELETE FROM editora
WHERE id = 12345;

select * from livros;
select * from editora;

create database biblioteca;

use biblioteca;

