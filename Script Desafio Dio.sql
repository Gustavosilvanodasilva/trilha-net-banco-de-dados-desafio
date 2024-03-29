-- Consulta Principal
select * from Filmes;
--1° Consulta
select Nome, Ano from Filmes;
--2° Consulta
select Nome, Ano, Duracao from Filmes order by 2;
--3° Consulta
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';
--4° Consulta
select Nome, Ano, Duracao from Filmes where Ano = 1997;
--5° Consulta
select Nome, Ano, Duracao from Filmes where Ano > 2000;
--6° Consulta
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by 3;
--7° Consulta
select Ano, Count(*) As 'Quantidade' from Filmes Group by Ano order by Quantidade desc;
--8° Consulta
select * from Atores where Genero = 'M';
--9° Consulta
select * from Atores where Genero = 'F' order by PrimeiroNome;
--10° Consulta
select F.Nome, G.Genero from Filmes F inner join Generos G on F.id = G.Id order by G.Genero;
--11° Consulta
select F.Nome, G.Genero from Filmes F inner join Generos G on F.id = G.Id where Genero = 'Mistério';
--12° Consulta
select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel from Filmes F inner join Atores A on F.id = A.ID 
inner join ElencoFilme EF on EF.id = A.id;


