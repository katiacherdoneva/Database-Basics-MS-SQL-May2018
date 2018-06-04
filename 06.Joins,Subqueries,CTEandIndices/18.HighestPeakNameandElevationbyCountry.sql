WITH CTE_HighestPeakNameAndElevationByCountry (Country, [Highest Peak Name], [Highest Peak Elevation], Mountain) 
AS (SELECT 
       c.CountryName AS Country,
	   ISNULL(p.PeakName, '(no highest peak)') AS [Highest Peak Name],
       ISNULL(MAX(p.Elevation), 0) AS [Highest Peak Elevation],
	   ISNULL(m.MountainRange, '(no mountain)') AS Mountain
  FROM Countries AS c
LEFT OUTER JOIN MountainsCountries AS mc
    ON mc.CountryCode = c.CountryCode
LEFT OUTER JOIN Mountains AS m
    ON m.Id = mc.MountainId
LEFT OUTER JOIN Peaks AS p
    ON p.MountainId = mc.MountainId
 GROUP BY c.CountryName, m.MountainRange, p.PeakName)

SELECT TOP (5) * 
  FROM CTE_HighestPeakNameAndElevationByCountry
 ORDER BY Country, [Highest Peak Name]


		  