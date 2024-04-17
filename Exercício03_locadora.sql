--1. Selecione todos os clientes da locadora.
select * from clientes;

--2. Selecione todos os filmes da locadora.
select * from FILME;

--3. Mostre todas as categorias que a locadora possui cadastrada.
select * from CATEGORIA;

--4. Mostre todos os clientes do sexo masculino que moram na cidade de Sorocaba.
select * from CLIENTES where sexo='M' and CIDADE='Sorocaba';

--5. Mostre o nome e o telefone de todos os clientes da locadora ordenando a consulta por ordem alfabética.
select NOME,TELEFONE from CLIENTES order by NOME ASC;

--6. Mostre a quantidade de clientes mulheres cadastradas no sistema.
select count(*) from CLIENTES where sexo='F';

--7. Mostre as categorias de filmes que a locadora possui mostrando o nome da categoria em ordem alfabética.
select NOME_CATEGORIA from CATEGORIA order by NOME_CATEGORIA ASC;
select distinct c.NOME_CATEGORIA from FILME f,CATEGORIA c where f.COD_CATEGORIA=c.COD_CATEGORIA order by NOME_CATEGORIA ASC;

--8. Mostre todos os filmes cadastrados do Diretor “Shawn Levy” que não possuem reserva.
select FILME from FILME where DIRETOR='Shawn Levy' and RESERVADA='n';

--9. Mostre todos os filmes cujo valor seja superior a 5 reais e que estão reservados.
select filme from FILME where VALOR_LOCACAO>5 and RESERVADA='s';

--10. Mostre todos os diretores cadastrados no sistema sem repetição de nomes.
select distinct DIRETOR from FILME;

--11. Mostre a quantidade de filmes reservados.
select COUNT(*) from FILME where RESERVADA='s';

--12. Mostre o maior valor de Locação cadastrado.
select MAX(VALOR_LOCACAO) from FILME where RESERVADA='s';

--13. Mostre todos os filmes cuja categoria seja Ação.
select f.FILME, c.NOME_CATEGORIA from FILME f inner join CATEGORIA c on f.COD_CATEGORIA=c.COD_CATEGORIA 
where c.NOME_CATEGORIA='Ação';

--14. Mostre todos os filmes cuja categoria seja Romance ou Aventura que já estão reservados e seu valor de locação seja menor que 5 reais.
select f.FILME,c.NOME_CATEGORIA,f.RESERVADA,f.VALOR_LOCACAO from FILME f inner join CATEGORIA c 
on f.COD_CATEGORIA=c.COD_CATEGORIA
where (c.NOME_CATEGORIA='Romance' or c.NOME_CATEGORIA='Aventura') and
RESERVADA='s' and VALOR_LOCACAO<5;

--15. Mostre todos os filmes alugados pelo cliente Renata Cristina.
select f.FILME from FILME f inner join LOCACOES l on f.COD_FILME=l.COD_FILME inner join CLIENTES c 
on c.COD_CLIENTE=l.COD_CLIENTE where c.NOME='Renata Cristina';

--16. Mostre todos os clientes que já alugaram mais do que 3 filmes.
select c.NOME from CLIENTES c inner join LOCACOES l on c.COD_CLIENTE=l.COD_CLIENTE
group by c.NOME having COUNT(l.COD_LOCACAO)>3;

--17. Mostre quanto foi gasto pelo cliente Renata Cristina.
select c.NOME,SUM(f.VALOR_LOCACAO) as valor_gasto  from CLIENTES c inner join LOCACOES l 
on c.COD_CLIENTE=l.COD_CLIENTE inner join FILME f
on f.COD_FILME=l.COD_FILME group by c.NOME having c.NOME='Renata Cristina';

--18. Mostre a média de valor de locação da locadora.
select ROUND(AVG(f.VALOR_LOCACAO),2) as media_valor_locado from LOCACOES l inner join FILME f
on l.COD_FILME=f.COD_FILME;

--19. Mostre o menor valor de locação da locadora.
select MIN(f.VALOR_LOCACAO) as menor_valor_locado from LOCACOES l inner join FILME f
on l.COD_FILME=f.COD_FILME;

--20. Mostre a quantidade de filme que a locadora possui por categoria.
select c.NOME_CATEGORIA,COUNT(*) as numero_filmes from CATEGORIA c inner join FILME f
on f.COD_CATEGORIA=c.COD_CATEGORIA group by c.NOME_CATEGORIA;