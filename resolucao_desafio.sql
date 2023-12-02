SELECT Nome, Ano FROM Filmes

-- 1

SELECT Nome , Ano
FROM Filmes
ORDER BY Ano

-- 2

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome='de volta para o futuro'

-- 3 

SELECT *
FROM Filmes
WHERE Ano = 1997

--4

SELECT *
FROM Filmes
WHERE Ano > 2000

--5

SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150

--6

SELECT Ano , COUNT(*) Quantidade 
FROM Filmes
GROUP BY Ano 
ORDER BY QUANTIDADE DESC

--7

SELECT PrimeiroNome, UltimoNome , Genero
FROM Atores
WHERE Genero = 'M'

--8

SELECT PrimeiroNome, UltimoNome , Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

--9

SELECT F.Nome , G.Genero
FROM FilmesGenero FG INNER JOIN Generos G ON FG.IdGenero = G.Id 
INNER JOIN Filmes F ON FG.IdFilme = F.Id ; 

--10

SELECT F.Nome , G.Genero
FROM FilmesGenero FG INNER JOIN Generos G ON FG.IdGenero = G.Id 
INNER JOIN Filmes F ON FG.IdFilme = F.Id 
WHERE GENERO = 'Mistério'

--11

SELECT F.Nome Nome , A.PrimeiroNome , A.UltimoNome , A.Genero
FROM ElencoFilme EF INNER JOIN Filmes F on EF.IdFilme = F.Id
INNER JOIN Atores A ON EF.IdAtor = A.Id

--12
