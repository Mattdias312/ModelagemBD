insert into Cidade
values
('Sorocaba','SP'),
('Campinas','SP'),
('Itu','SP'),
('Votorantim','SP'),
('Vit�ria','ES')

insert into Empregado
values
('Matheus', '2024-02-02',1900),
('Lucas', '2024-02-03',1500),
('Fabricio', '2024-02-02',2800),
('Gabriela', '2024-01-02',2100),
('Gisele', '2024-01-02',2400)

select distinct Unidade from produto

select cdestado,Nomecidade from Cidade

select 'C�digo do Cliente',cod_cliente, 'Nome do Cliente',nome_cliente from Cliente

select cod_cliente as 'C�digo do Cliente',nome_cliente as 'Nome do Cliente' from Cliente

select Nome, Salario,Salario*1.1 aumento_salario from Empregado

select 'Funcionario: '+ Nome + 'Salario: ' + CONVERT(VARCHAR,Salario) as 'Fus�o',Salario,Nome from Empregado

SELECT num_pedido, cod_produto, quantidade
 FROM item_pedido
 WHERE quantidade = 45
