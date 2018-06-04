SELECT COUNT(c.CountryCode) AS CountryCode
  FROM Countries AS c
  FULL JOIN MountainsCountries AS mc
    ON mc.CountryCode = c.CountryCode
 WHERE mc.MountainId IS NULL
  