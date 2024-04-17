--1. Mostre uma lista com o c�digo de cada filme que j� foi alugado e a quantidade de vezes que foi alugado.
select f.COD_FILME,f.FILME,COUNT(l.COD_LOCACAO) as qtde_locacao from CLIENTES c inner join LOCACOES l 
on c.COD_CLIENTE=l.COD_CLIENTE inner join FILME f
on f.COD_FILME=l.COD_FILME group by f.COD_FILME,f.FILME;

--2. Mostre o nome e a data de devolu��o de todos os filmes de A��o cujo diretor seja Richard Donner que foram alugados pelo cliente Edson Martin Feitosa.
select f.FILME,l.DATA_DEVOLUCAO from CLIENTES cl inner join LOCACOES l 
on cl.COD_CLIENTE=l.COD_CLIENTE inner join FILME f
on f.COD_FILME=l.COD_FILME inner join CATEGORIA ca on ca.COD_CATEGORIA=f.COD_CATEGORIA 
group by l.DATA_DEVOLUCAO,f.FILME,ca.NOME_CATEGORIA,f.DIRETOR,cl.NOME
having ca.NOME_CATEGORIA='A��o' and f.DIRETOR='Richard Donner' and cl.NOME='Edson Martin Feitosa';

--3. Mostre o nome do filme, seu valor de loca��o, um campo chamado desconto onde deve aparecer o valor de 10% de desconto em cima do valor de loca��o e um campo chamado valor_final que deve possuir valor de loca��o menos os dez por cento de desconto dado.
select f.FILME,f.VALOR_LOCACAO,f.VALOR_LOCACAO*0.1 as desconto,f.VALOR_LOCACAO-f.VALOR_LOCACAO*0.1 as valor_final
from FILME f;

--4. Mostre sem repeti��o de registros, todos os filmes alugados por clientes da cidade de Votorantim.
select distinct f.FILME from CLIENTES c inner join LOCACOES l
on c.COD_CLIENTE=l.COD_CLIENTE inner join FILME f
on f.COD_FILME=l.COD_FILME group by f.FILME,c.CIDADE having c.CIDADE='Votorantim';

--5. Mostre qual filme foi alugado hoje.
select f.FILME from LOCACOES l inner join FILME f on f.COD_FILME=l.COD_FILME 
group by l.DATA_RETIRADA,f.FILME having DATA_RETIRADA=GETDATE()

--6. Mostre quanto � locadora lucrou com as loca��es do filme �A vida � bela�.
select SUM(f.VALOR_LOCACAO) as lucro from LOCACOES l inner join FILME f on f.COD_FILME=l.COD_FILME 
group by f.FILME,f.FILME having DATA_RETIRADA=GETDATE()

--7. Mostre a quantidade de sa�das de filmes para loca��o agrupando a consulta por diretor.

--8. Mostre todas as categorias dos filmes alugados pela cliente Maria Chiquinha.

--9. Mostre o nome e o telefone de todos os clientes que j� alugaram o filme Constantine.

--10. Mostre todas as categorias de filmes que n�o possuem filmes cadastrado