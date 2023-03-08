-- exercicio 2--
create database livraria;

use livraria;
-- exercicio 3--
create table editora(
    id int not null,
    nome varchar(80) not null,
    email varchar(120) not null,
    primary key(id)
);
-- exercicio 4--
create table livros(
    id int not null,
    titulo varchar(80) not null,
    preco float not null,
    primary key(id)
);
-- exercicio 5--
insert into editora(id,nome,email)values
(12345, "Titulo livro","editorateste@gmail.com"),
(23456, "Titulo livro2","editorateste2@gmail.com"),
(34567, "Titulo livro3","editorateste3@gmail.com");
-- exercicio 6--
insert into livros(id,titulo,preco)values
(12345, "Titulo livro","56.99"),
(23456, "Titulo livro2","25.89"),
(34567, "Titulo livro3","32.80");
-- exercicio 7--
select * from livros;
-- exercicio 8--
select * from editora;

--exercicio 9--
UPDATE livros
SET preco = '22.50'
WHERE id = 12345;
--exercicio 10--
UPDATE editora
SET nome = 'Titulo'
WHERE id = 12345;

select * from livros;
select * from editora;
-- exercicio 11--
DELETE FROM livros
WHERE id = 12345;
-- exercicio 12--
DELETE FROM editora
WHERE id = 12345;

select * from livros;
select * from editora;
-- exercicio 13--
create database biblioteca;

use biblioteca;
-- exercicio 14--
create table assuntos(
id int(3),
nome varchar(30) not null,
primary key(id)
);

create table livros(
id int(6),
titulo varchar(50) not null,
autor varchar(50),
assunto_id int(3) not null,
datalan date,
copias int(3),
primary key(id)
);

create table emprestimos(
id int(8),
aluno_id int(5),
livro_id int(5),
dataret date not null,
dataprev date,
datadev date not null,
multa float(6.2),
primary key(dataret)
);

create table alunos(
id int(5) not null,
nome varchar(50) not null,
email varchar(50) not null,
fone varchar(20) not null
);
-- provavelmente todas as celulas com int(numero) estao com erro verificar isso ao testar--
-- exercicio 15--
insert into alunos(id,nome,email,fone)values
(12345,"Tiago","teste@gmail.com","19-9999-9999"),
(13345,"Pedro","teste2@gmail.com","19-9997-9999"),
(14445,"Tiago","teste3@gmail.com","19-9998-9999");
-- exercicio 16--
insert into livros(id,titulo,autor,assunto_id,datalan,copias)values
(123456,"TESTE02","autor",123,01/01/2000,09),
(123556,"TESTE03","autor02",122,02/01/2000,09),
(123666,"TESTE04","autor03",124,03/01/2000,09);
-- exercicio 17--
insert into assuntos(id,nome)values
(121,"assunto01"),
(122,"assunto02"),
(123,"assunto03");
-- exercicio 18--
select 123456 from livros
-- exercicio 19--
select "autor" from livros
--exercicio 20--
UPDATE assuntos
SET assunto = 'assunto teste'
WHERE id = 121;
-- exercicio 21--
UPDATE alunos
SET fone = '19-9999-9990'
WHERE id = 12345;
-- exercicio 22--
ALTER TABLE aluno ADD endereco varchar(50)
-- exercicio 23--
DELETE FROM alunos
WHERE id = 12345;
-- exercicio 24--
RENAME TABLE assuntos TO generos;
-- exercicio 25--
ALTER TABLE livros
DROP COLUMN datalan;