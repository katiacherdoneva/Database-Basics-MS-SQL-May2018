SELECT mc.CountryCode,
       m.MountainRange,
       p.PeakName,
       p.Elevation
  FROM MountainsCountries AS mc
INNER JOIN Mountains AS m
    ON m.Id = mc.MountainId
INNER JOIN Peaks AS p 
    ON p.MountainId = mc.MountainId
 WHERE p.Elevation > 2835 AND mc.CountryCode = 'BG'
 ORDER BY p.Elevation DESC
