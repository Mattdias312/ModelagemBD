/*CREATE TABLE  Cliente
(
Cod_Cli		int not null,
Nome_Cli	varchar(40) not null,
End_Cli		varchar(30) not null,
Bai_Cli		varchar(20) not null,
Cid_Cli		varchar(20) not null,
Uf_Cli		char(3) not null,
tel_Clu		varchar(15) null,
Constraint PK_Cliente Primary Key(Cod_Cli)
)

create table NotaFiscal
(
Num_Nota	int not null,
Cod_Cli		int not null,
Serie_Nota	varchar(10) not null,
Emissao_Nota	smalldatetime null,
Vtot_Nota	SmallMoney not null,

Constraint PK_NotaFiscal Primary key(Num_Nota),
Constraint FK_Cliente foreign Key(Cod_Cli) References Cliente(Cod_Cli)
)

create table Cidade(
Codcidade	varchar(2) not null,
Nomecidade	varchar(40)
)

create table Empregado(
Nrmatricula int,
Nome	varchar(50),
Data_demissao	datetime,
Salario		float
)

Create table estado(
cdestado	varchar(2) not null,
Nomeestado	varchar(30)
)

Alter table cidade
add primary key (codcidade);

Alter table cidade
add cdestado char(2) not null,
	teste varchar(1) null;

alter table cidade
Drop column teste;

alter table cidade
alter column cdestado varchar(2);

alter table cidade
drop constraint PK__Cidade__9ED2CA96BC2B4D7C;

alter table cidade
add constraint pk_codcidade primary key(codcidade);

alter table estado
add primary key(cdestado);

alter table cidade
add foreign key (cdestado) references estado (cdestado);

drop table empregado*/
