select * from Funcionario

select NRMATRICULA,PRIMEIRO_NOME,ULTIMO_NOME,COD_SETOR
FROM Funcionario
where COD_SETOR=2;

select PRIMEIRO_NOME,SALARIO
from Funcionario
where SALARIO < 1900;

select PRIMEIRO_NOME,SALARIO
from Funcionario
where SALARIO between 1500 and 2000;

select cod_produto,descricao
from produto
where Valor_unitario between 0.32 and 2.00;

select PRIMEIRO_NOME, SALARIO, COD_SETOR
from Funcionario
where PRIMEIRO_NOME like '%M%';

select PRIMEIRO_NOME, SALARIO, COD_SETOR
from Funcionario
where PRIMEIRO_NOME like 'M%';

select cod_produto, descricao, Unidade
from produto
where Unidade like '%k%';

select nome_vendedor
from vendedor
where faixa_comissao in ('A','B');

select PRIMEIRO_NOME,SALARIO,COD_SETOR
from Funcionario
where COD_SETOR in(1,3);

select PRIMEIRO_NOME,SALARIO,COD_SETOR
from Funcionario
where COD_SETOR not in(1,3);

select *
from cliente
where ie is not null;

select NRMATRICULA, ULTIMO_NOME, SALARIO
from Funcionario
where SALARIO >2000 and NRMATRICULA>3;

select *
from Funcionario
where SALARIO >2500 or COD_SETOR=3;

select descricao
from produto
where Unidade='m' and Valor_unitario=1.05;

select descricao
from produto
where Unidade='un' and Valor_unitario=4;

select nome_vendedor, salario_fixo
from vendedor
order by nome_vendedor;

select * from Funcionario
where COD_SETOR not in (2,4)
order by COD_SETOR;

select * from Funcionario
where COD_SETOR not in (2,4)
order by COD_SETOR desc;

select * from Funcionario
where COD_SETOR not in (2,4)
order by COD_SETOR, PRIMEIRO_NOME;

create table pessoa
(
id_pessoa integer primary key,
nome varchar (20),
cpf varchar (14)
);

create table pessoa_fisica
(
id_pessoa integer primary key,
nome varchar (20),
cpf varchar (14)
);

insert into pessoa values(1,'Pedro Cabral', '1234567891'),
(2,'João Silva', '1234567396');

insert into pessoa_fisica select id_pessoa, nome,cpf from pessoa;

select * from pessoa
select * from pessoa_fisica

select F.PRIMEIRO_NOME,F.SALARIO,S.NOME_SETOR
from Funcionario f, Setor s
where F.COD_SETOR = S.COD_SETOR;