--USE Geography
SELECT CountryName, ISOCode 
  FROM Countries
 WHERE CountryName LIKE '%A%A%A%'
 ORDER BY ISOCode