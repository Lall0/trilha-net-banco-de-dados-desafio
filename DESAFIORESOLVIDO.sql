-- 1 
SELECT NOME, ANO 
FROM FILMES
-- 2 
SELECT Nome, Ano, Duracao
FROM FILMES
order by Ano ASC
--3
SELECT NOME, ANO, DURACAO
FROM FILMES
where nome = 'de volta para o futuro';
--4
SELECT NOME, ANO, DURACAO
FROM FILMES
where Ano = '1997';
--5
SELECT NOME, ANO, DURACAO
FROM FILMES
where Ano >='2000';
--6
SELECT NOME, ANO, DURACAO
FROM FILMES
WHERE DURACAO > 100 AND DURACAO < 150
ORDER BY DURACAO ASC;
-- 7
SELECT Ano, Count (*) AS QTD_Filmes
FROM FILMES
GROUP BY Ano
ORDER BY QTD_Filmes DESC;
--8
SELECT PRIMEIRONOME, ULTIMONOME, Genero
FROM Atores
WHERE Genero = 'M';
--9
SELECT PRIMEIRONOME, ULTIMONOME, Genero
FROM Atores
WHERE Genero = 'F'
order by PRIMEIRONOME;
--10
SELECT 
    F.Nome, 
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id;
--11
SELECT 
    F.Nome, 
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE Genero = 'Mistério'; 
--12
SELECT 
    F.Nome AS Filme, 
    A.PrimeiroNome,
    A.UltimoNome,
    E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.IdFilme
INNER JOIN Atores A ON A.Id = E.IdAtor;
