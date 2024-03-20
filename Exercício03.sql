--1) Crie a tabela Setor, de acordo com a estrutura abaixo:
create table Setor(
COD_SETOR INT not null,
NOME_SETOR VARCHAR(30)not null
);

--2) Crie a tabela Funcionario, de acordo com a estrutura abaixo:
create table Funcionario(
NRMATRICULA INT not null,
PRIMEIRO_NOME VARCHAR(20),
ULTIMO_NOME VARCHAR(50),
EMAIL VARCHAR(200),
TELEFONE VARCHAR(20),
DATA_ADMISSAO DATETIME,
SALARIO FLOAT,
COD_SETOR INT not null,
);

--3) Crie as chaves primárias e estrangeiras das tabelas. 
alter table Setor add primary key (COD_SETOR);
alter table Funcionario add primary key (NRMATRICULA);
alter table Funcionario add foreign key (COD_SETOR) references setor(cod_setor);

--4) Faça 5 comandos inserts para inserir dados na tabela setor 
insert into Setor
values
(1,'produção'),
(2,'Administrativo'),
(3,'Almoxarifado'),
(4,'Engenharia'),
(5,'Qualidade')

--5) Faça 8 comandos inserts para inserir dados na tabela funcionario 
insert into Funcionario
values
(1,'Matheus','Dias','matheus@email.com','(15)99999-8888','2024-01-06',1800,1),
(2,'Diego','Saine','diego@email.com','(15)96532-7832','2024-01-05',2100,5),
(3,'Moises','Neto','moises@email.com','(15)98732-8732','2024-01-06',1600,2),
(4,'Guilherme','Silva','guilherme@email.com','(15)98273-4633','2024-01-12',3400,4),
(5,'Maria','Boletta','maria@email.com','(15)97232-0439','2024-02-06',2000,3),
(6,'Aline','Ramos','aline@email.com','(15)96523-6343','2024-04-02',1800,1),
(7,'Daniela','Santos','daniela@email.com','(15)92723-0945','2024-01-06',2200,5),
(8,'Edmilson','Oliveira','edmilson@email.com','(15)92983-4554','2024-04-02',2000,3)

--6) Desenvolva as seguintes consultas:
--a. Exiba os códigos de setores exclusivos da tabela funcionário (não repetir o código do setor)
select distinct cod_setor from Funcionario

--b. Exiba o sobrenome concatenado com o código do setor, separado por vírgula e espaço, e nomeie a coluna como Empregado e Setor
select ULTIMO_NOME + ', ' + CONVERT(VARCHAR,COD_SETOR) as 'Empregado e Setor',*  from Funcionario