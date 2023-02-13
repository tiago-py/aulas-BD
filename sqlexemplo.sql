-- criando o banco de dados
create database aula13022023;

-- definindo o schema a ser usado
use aula13022023;

-- criando a tabela aluno
create table aluno(
rm int not null, 
nome varchar(60) not null,
cidade varchar(60) not null,
cpf varchar(14) not null unique,
email varchar(100),
primary key(rm)
);

-- criando a tabela professores
create table professores(
matricula int not null auto_increment,
nome varchar (60) not null,
telefone char (14),
email varchar (100) not null,
cidade varchar (60) not null,
primary key (matricula)
);

-- inserindo dados da tabela aluno
insert into aluno(rm,nome,cidade,cpf,email)values
(28997,'tiaguin rei delas','cidade de Deus','123.456.789-90','tiaguindoseqso@gmail.com'),
(78673,'peu rei delas','Conchal','111.111.111-90','pedrinfiel123@gmail.com');

-- inserindo dados da tabela professor
insert into professores(matricula,nome,telefone,email,cidade)values
(2899733,'sergao','5543289382998','sergao@gmail.com','cidade do sexo'),
(7867355,'jeffinho','55478783728788','jeffinho@gmail.com','Conchal');

