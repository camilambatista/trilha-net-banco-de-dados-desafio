SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano FROM Filmes ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

SELECT * FROM Filmes WHERE Ano = 1997

SELECT * FROM Filmes WHERE Ano > 2000

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

SELECT Ano, COUNT (*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

SELECT PrimeiroNome, UltimoNome From Atores WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome From Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT 
	Nome, 
	Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

SELECT 
	Nome, 
	Generos.Genero 
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

SELECT 
	Nome, 
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes 
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme 
INNER JOIN Atores ON Atores.Id = Filmes.Id
