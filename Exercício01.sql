create database Escola;

--1)Crie uma tabela chamada "Professores" com os campos: Id (int, chave primária), Nome (varchar 50), e Disciplina (varchar 15).
create table Professores
(
Id_Prof int identity (1,1) not null,
Nome varchar (50) not null,
Disciplina varchar (15) not null,
Constraint PK_Professor Primary Key(Id_Prof)
);

--2)Adicione um novo professor com Nome "Ana Oliveira" e Disciplina "Português" à tabela "Professores".
insert into Professores
values('Ana Oliveira','Português');

--3)Atualize o nome do professor com Id igual a 1 para "Ana Silva".
update Professores
set Nome = 'Ana Silva'
where Id_Prof = 1;

--4)Adicione mais 10 registros, com dados a sua escolha a tabela "Professores"
insert into Professores
values
('Diego Saine', 'Matemática'),
('Gabriela Fernandes', 'Ingês'),
('Maria Boletta', 'Espanhol'),
('Moises Neto', 'História'),
('Guilherme Silva', 'Geografia'),
('Aline Ramos', 'Biologia'),
('Daniela Santos', 'Física'),
('Carlos Rodrigues', 'Química'),
('Edmilson Oliveira', 'Filosofia'),
('Elaine Dias', 'Artes');

--5)Exclua o professor com Id igual a 2 da tabela "Professores".
delete from Professores
where Id_Prof=2;

--6)Crie uma tabela chamada "Turmas" com os campos: Id (int, chave primária), Nome (varchar 50), e ProfessorResponsavel (int chave estrangeira referenciando a tabela "Professores").
create table Turmas
(
Id_Turma int identity (1,1) not null,
Nome varchar (50) not null,
ProfessorResponsavel int not null,

Constraint PK_Turma Primary key(Id_Turma),
Constraint FK_Professores foreign Key(ProfessorResponsavel) References Professores(Id_Prof)
);

--7)Adicione uma nova turma com Nome "9A" e ProfessorResponsavel Ana Silva" à tabela "Turmas".
insert into Turmas
values('9A',1);

--8)Adicione mais 10 registros, com dados a sua escolha a tabela "Turmas"
insert into Turmas
values
('9C',1),
('9B',3),
('7A',4),
('7B',5),
('6A',6),
('6B',7),
('8A',8),
('8B',9),
('5A',10),
('5B',11);

--9)Crie uma tabela chamada "Alunos" com os seguintes campos: Id (int, chave primária), Nome (varchar 50), DataNascimento (date), e TurmaId (int, chave estrangeira referenciando a tabela "Turmas").
create table Alunos
(
Id_Aluno int identity (1,1) not null,
Nome varchar (50) not null,
Data_Nascimento date not null,
Turma_Id int not null,

Constraint PK_Alunos Primary key(Id_Aluno),
Constraint FK_Turma foreign Key(Turma_Id) References Turmas(Id_Turma)
);

--10)Adicione um novo aluno com Nome "Maria Souza", DataNascimento "2005-10-15" e TurmaId igual a 1 à tabela "Alunos".
insert into Alunos
values('Maria Souza','2005-10-15',1);

--11)Atualize o nome do aluno com Id igual a 1 para "Maria da Silva".
update Alunos
set Nome='Maria da Silva'
where Id_Aluno=1;

--12)Adicione mais 10 registros, com dados a sua escolha a tabela "Alunos"
insert into Alunos
values
('Matheus Fernandes','2010-12-20',11),
('Camila Prado','2006-01-15',2),
('Cristiano Soares','2006-11-17',3),
('Enzo Reis','2007-03-30',4),
('Catarina Amendola','2007-01-11',5),
('Claudia Santos','2007-04-18',6),
('Marcos Dias','2009-02-25',7),
('Marcel Silva','2008-05-05',8),
('Veronica Rodrigues','2008-10-08',9),
('Aline Souza','2009-09-21',10);

--13)Exclua o aluno com Id igual a 2 da tabela "Alunos".
delete from Alunos
where Id_Aluno=2;

--14)Crie uma tabela chamada "Notas" com os campos: Id (int, chave primária), AlunoId (int, chave estrangeira referenciando a tabela "Alunos"), Disciplina (varchar 15), e Nota (decimal 5,2).
create table Notas
(
Id_Nota int identity(1,1) not null,
Aluno_Id int not null,
Disciplina varchar (15) not null,
Nota decimal (5,2) not null,
Constraint PK_Nota Primary key(Id_Nota),
Constraint FK_Aluno foreign Key(Aluno_Id) References Alunos(Id_Aluno)
);

--15)Adicione uma nota de 8.5 para o aluno com Id igual a 1 na disciplina "Matemática" à tabela "Notas".
insert into Notas
values(1,'Matemática',8.5)

--16)Atualize a nota do aluno com Id igual a 1 na disciplina "Matemática" para 9.0.
update Notas
set Nota=9
where Aluno_Id=1;

--17)Adicione mais 10 registros, com dados a sua escolha na tabela "Notas"
insert into Notas
values
(10,'Geografia',4.3),
(3,'Matemática',9.5),
(4,'Matemática',10),
(5,'Matemática',8),
(6,'Espanhol',7.2),
(7,'História',6.1),
(8,'Matemática',5.4),
(9,'Matemática',8.5),
(10,'Biologia',7.7),
(10,'Espanhol',6.4);

--18)Exclua a nota do aluno com Id igual a 1 na disciplina "Matemática" da tabela "Notas".
delete from Notas
where Aluno_Id=1;

--19)Crie uma tabela chamada "Matriculas" com os campos: Id (int, chave primária), AlunoId (int, chave estrangeira referenciando a tabela "Alunos"), TurmaId (int, chave estrangeira referenciando a tabela "Turmas"), e DataMatricula (date).
create table Matriculas
(
Id_Matricula int identity (1,1) not null,
Aluno_Id int not null,
Turma_Id int not null,
Data_Matricula date not null,

Constraint PK_Matricula Primary key(Id_Matricula),
Constraint FK_Aluno_Matricula foreign Key(Aluno_Id) References Alunos(Id_Aluno),
Constraint FK_Turma_Matricula foreign Key(Turma_Id) References Turmas(Id_Turma)
);

--20)Adicione uma matrícula para o aluno com Id igual a 1 na turma com Id igual a 1 com a DataMatricula igual a "2022-02-15" à tabela "Matriculas".
insert into Matriculas
values(1,1,'2022-01-15');

--21)Adicione mais 10 registros, com dados a sua escolha na tabela  "Matriculas"
insert into Matriculas
values
(1,1,'2022-01-15'),
(3,2,'2022-01-20'),
(4,3,'2022-01-17'),
(5,4,'2023-01-14'),
(6,5,'2023-01-13'),
(7,6,'2022-01-10'),
(8,7,'2022-01-19'),
(9,8,'2022-01-16'),
(10,9,'2024-01-22'),
(11,10,'2024-01-27');

select * from Professores;

select * from Turmas;

select* from Alunos;

select* from Notas;

select* from Matriculas;
