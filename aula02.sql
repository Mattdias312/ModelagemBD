/*insert into estado
values
('SP', 'São Paulo');

insert into cidade
values
('1', 'Votorantim','SP');

insert into cidade (CodCidade,Nomecidade,cdestado)
Values ('2','Sorocaba','SP');

insert into cidade (Codcidade, Nomecidade,cdestado)
Values('3','Itu','NN');

insert into Cidade(Codcidade,Nomecidade,cdestado)
values('4','Itapira','NN');

insert into estado
values('NN','Não Cadastrado');

update Cidade
set cdestado = 'SP'
where cdestado = 'NN'

insert into estado
values('RJ', 'Rio de janeiro');

insert into Cidade
values('5','Rio de Janeiro','RJ');

update Cidade
set cdestado = 'NN'
where Nomecidade in ('Itu','Itapira')

delete from Cidade
where Nomecidade ='Itapira'
*/
create table Tbl_Clientes(
Codigo int identity(1,1) primary key,
Nome varchar(100),
UF varchar(2)
);

insert into Tbl_Clientes
(Nome,UF)
values('Nicholas','RS');

insert into Tbl_Clientes
(Nome,UF)
values
('Diana Prince','PR'),
('Bruce wayne','SP'),
('Tony Stark','RS');

select* from Tbl_Clientes

select IDENT_CURRENT('Tbl_Clientes');
select IDENT_CURRENT('Tbl_Clientes') as Ultimo_registro;

select * from Cidade
where Nomecidade LIKE '%a%';

select* from estado