select GETDATE();

select DATENAME(yy,GETDATE());

select DATENAME(MONTH,GETDATE());

select DATEPART(MM,GETDATE());

select DAY(GETDATE());

select MONTH(GETDATE());

select YEAR(GETDATE());

select DATEDIFF(yy,GETDATE(),GETDATE()+366);

select DATEDIFF(dd,'25-01-1995',GETDATE());

select DATEADD(yy,1,getdate());

select DATENAME(mm,(dateadd(mm,3,getdate())));

select isdate('27-02-2023');

select isdate('30-02-2023');

select CONVERT(char,GETDATE(),103);

select CONVERT(char,GETDATE(),113);

select ROUND(123.34567,3);

select ROUND(123.34567,2);

select ROUND(123.34567,-2);

select POWER(4,2);

select POWER(2,2);

select ASCII('A'),ASCII('a');

select char(65),CHAR(64),CHAR(12);

select CHARINDEX('Mundo','Ola Mundo Bonito');

select CHARINDEX('Mundo','Ola Mundo Bonito',6);

select REPLACE('abcdefghicde','cde','xxx');

select REPLACE(primeiro_nome,'C','Z') from Funcionario;

select STUFF('abcdef',2,4,'_ijklmn_');

select LEFT('abcdefgh',5);

select RIGHT('abcdefgh',5);

select REPLICATE('ABC',3);

select SUBSTRING('ABCDEFGHIJ',2,3);

select LEN('ABCD');

SELECT REVERSE('ABCD');

SELECT LOWER('AbCD');

SELECT UPPER('aBcd');

SELECT '_' + LTRIM('  aBcd  ') +'_'

SELECT '_' + RTRIM('  aBcd  ') +'_'

SELECT '_' + TRIM('  aBcd  ') +'_'

