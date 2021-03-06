SELECT mc.CountryCode,
       COUNT(mc.MountainId) AS MountainRages
  FROM MountainsCountries AS mc
 WHERE mc.CountryCode IN ('US', 'RU', 'BG')
 GROUP BY mc.CountryCode
