--1)Crie uma tabela chamada "Tbl_Clientes" com os seguintes campos: Id (int, chave primária), Nome (varchar 50), Email (varchar 100), e Telefone (varchar 15).
create table Tbl_Clientes
(
id int identity (1,1) not null,
Nome varchar (50) not null,
Email varchar (50) not null,
Telefone varchar (50) not null,
Constraint Pk_Clientes Primary Key(id)
);

--2)Adicione um novo cliente com Nome "João Silva", Email "joao@email.com" e Telefone "(11) 1234-5678" à tabela "Tbl_Clientes".
insert into Tbl_Clientes
values('João Silva','joao@email.com','(11) 1234-5678');

--3)Adicione mais 10 registros, com dados a sua escolha a tabela "Tbl_Clientes"
insert into Tbl_Clientes
values
('Diego Saine', 'diego@email.com','(11) 1111-2222'),
('Gabriela Fernandes', 'gabriela@email.com','(11) 3333-4444'),
('Maria Boletta', 'maria@email.com','(15) 1111-3333'),
('Moises Neto', 'moises@email.com','(21) 1234-6789'),
('Guilherme Silva', 'guilherme@email.com','(15) 2190-5678'),
('Aline Ramos', 'aline@email.com','(21) 9084-6532'),
('Daniela Santos', 'daniela@email.com','(11) 3265-4576'),
('Carlos Rodrigues', 'carlos@email.com','(15) 4442-9875'),
('Edmilson Oliveira', 'edmilson@email.com','(21) 3456-5385'),
('Elaine Dias', 'elaine@email.com','(15) 9765-1253');

--4)Atualize o telefone do cliente com Id igual a 1 para "(11) 8765-4321".
update Tbl_Clientes
set Telefone = '(11) 8765-4321'
where id = 1;

--5)Crie uma tabela chamada "Tbl_Produtos" com os campos: Id (int, chave primária), Nome (varchar 50), Preco (decimal), e Estoque (int).
create table Tbl_Produtos
(
Id int identity (1,1) not null,
Nome varchar (50) not null,
Preco decimal (5,2) not null,
Estoque int not null,
Constraint PK_Produtos Primary Key(Id)
);

--6)Adicione um novo produto com Nome "Camiseta", Preco 29.99 e Estoque 100 à tabela "Tbl_Produtos".
insert into Tbl_Produtos
values('Camiseta',29.99,100);

--7)Adicione mais 10 registros, com dados a sua escolha a tabela "Tbl_Produtos"
insert into Tbl_Produtos
values
('Calça',99.99,150),
('Shorts',89.99,120),
('Blusa',69.99,130),
('Vestido',109.99,90),
('Camisa',79.99,60),
('Boné',69.99,70),
('Jaqueta',99.99,80),
('Bermuda',69.99,90),
('Saia',75.99,75),
('Moletom',99.99,100);

--8)Atualize o preço do produto com Id igual a 1 para 39.99.
update Tbl_Produtos
set Preco = 39.99
where Id = 1;

--9)Crie uma tabela chamada "Tbl_Pedidos" com os campos: Id (int, chave primária), ClienteId (int, chave estrangeira referenciando a tabela "Clientes"), ProdutoId (int, chave estrangeira referenciando a tabela "Produtos"), Quantidade (int), e DataPedido (date).
create table Tbl_Pedidos
(
Id int identity (1,1) not null,
ClienteId int  not null,
ProdutoId int not null,
Quantidade int not null,
DataPedido date,
Constraint PK_Pedidos Primary key(Id),
Constraint FK_Cliente foreign Key(ClienteId) References Tbl_Clientes(Id),
Constraint FK_Produto foreign Key(ProdutoId) References Tbl_Produtos(Id)
);

--10)Adicione um novo pedido para o cliente com Id igual a 1, referente ao produto com Id igual a 1, com Quantidade 2 e DataPedido igual a hoje à tabela "Tbl_Pedidos".
insert into Tbl_Pedidos
values(1,1,2,GETDATE());

--11)Atualize a quantidade do pedido com Id igual a 1 para 3.
update Tbl_Pedidos
set Quantidade = 3
where Id = 1;

--12)Adicione mais 10 registros, com dados a sua escolha a tabela "Tbl_Pedidos"
insert into Tbl_Pedidos
values
(2,1,2,GETDATE()),
(3,3,1,GETDATE()),
(6,3,2,GETDATE()),
(8,3,4,GETDATE()),
(9,6,6,GETDATE()),
(7,9,4,GETDATE()),
(2,6,4,GETDATE()),
(10,10,4,GETDATE()),
(11,7,2,GETDATE()),
(5,11,3,GETDATE());

--13)Crie uma tabela chamada "Tbl_Funcionarios" com os campos: Id (int, chave primária), Nome (varchar 50), Cargo (varchar 50), e Salario (decimal).
create table Tbl_Funcionarios
(
Id int identity (1,1) not null,
Nome varchar (50) not null,
Cargo varchar (50) not null,
Salario decimal(6,2) not null,
Constraint PK_Funcionario Primary key(Id)
);

--14)Adicione um novo funcionário com Nome "Maria Santos", Cargo "Gerente" e Salario 5000 à tabela "Funcionarios".
insert into Tbl_Funcionarios
values('Maria Santos','Gerente',5000);

--15)Atualize o salário do funcionário com Id igual a 1 para 6000.
update Tbl_Funcionarios
set Salario = 6000
where Id = 1

--16)Adicione mais 10 registros, com dados a sua escolha a tabela "Tbl_Funcionarios"
insert into Tbl_Funcionarios
values
('Matheus Fernandes','Caixa',2000),
('Camila Prado','Repositor',1500),
('Cristiano Soares','Administrativo',3000),
('Enzo Reis','Caixa',2000),
('Catarina Amendola','Repositor',1500),
('Claudia Santos','Administrativo',3000),
('Marcos Dias','Almoxarife',1800),
('Marcel Silva','Líder',4500),
('Veronica Rodrigues','Caixa',2000),
('Aline Souza','Caixa',2000);

--17)Crie uma tabela chamada "Tbl_Vendas" com os campos: Id (int, chave primária), ProdutoId (int, chave estrangeira referenciando a tabela "Produtos"), Quantidade (int), ValorTotal (decimal), e DataVenda (date).
create table Tbl_Vendas
(
Id int identity (1,1) not null,
ProdutoId int not null,
Quantidade int not null,
ValorTotal decimal (6,2) not null,
DataVenda date not null,
Constraint PK_Venda Primary key(Id),
Constraint FK_ProdutoVendido foreign Key(ProdutoId) References Tbl_Produtos(Id)
);

--18)Adicione uma nova venda referente ao produto com Id igual a 1, com Quantidade 2, ValorTotal 79.98 e DataVenda igual a hoje à tabela "Tbl_Vendas".
insert into Tbl_Vendas
values(1,2,79.98,GETDATE());

--19)Adicione mais 10 registros, com dados a sua escolha a tabela "Tbl_Vendas"
insert into Tbl_Vendas
values
(2,3,109.48,GETDATE()),
(4,6,204.67,GETDATE()),
(7,1,69.99,GETDATE()),
(9,3,159.32,GETDATE()),
(4,2,109.87,GETDATE()),
(7,4,130.40,GETDATE()),
(2,1,101.43,GETDATE()),
(10,3,184.32,GETDATE()),
(6,5,427.84,GETDATE()),
(8,2,150.36,GETDATE());


--20)Exclua a venda com Id igual a 1 da tabela "Tbl_Vendas".
delete from Tbl_Vendas
where Id = 1;


select * from Tbl_Clientes

select * from Tbl_Produtos

select * from Tbl_Pedidos

select * from Tbl_Funcionarios

select * from Tbl_Vendas