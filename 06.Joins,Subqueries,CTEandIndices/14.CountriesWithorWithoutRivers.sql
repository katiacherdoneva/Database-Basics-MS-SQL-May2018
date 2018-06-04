SELECT TOP (5)
       c.CountryName,
       r.RiverName
  FROM CountriesRivers AS cr
FULL JOIN Countries AS c
    ON c.CountryCode = cr.CountryCode
FULL JOIN Rivers AS r
    ON r.Id = cr.RiverId
FULL JOIN Continents
    ON Continents.ContinentCode = c.ContinentCode
 WHERE Continents.ContinentName = 'Africa'
 ORDER BY c.CountryName ASC



