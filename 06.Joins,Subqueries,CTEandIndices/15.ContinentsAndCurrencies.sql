WITH CTE_CurrencyUsage (ContinentCode, CurrencyCode, CurrencyUsage) 
AS
(
    SELECT Countries.ContinentCode,
           Countries.CurrencyCode,
           COUNT(Countries.CurrencyCode) AS CurrencyUsage
	FROM Countries
	GROUP BY Countries.ContinentCode, Countries.CurrencyCode
)

SELECT MaxCurrency.ContinentCode,
       cu.CurrencyCode,
       MaxCurrency.CurrencyUsage
  FROM (SELECT c.ContinentCode,
               MAX(cu.CurrencyUsage) AS CurrencyUsage    
         FROM Continents AS c
        INNER JOIN CTE_CurrencyUsage AS cu
           ON cu.ContinentCode = c.ContinentCode
        GROUP BY c.ContinentCode) 
	AS MaxCurrency
 INNER JOIN CTE_CurrencyUsage AS cu
           ON cu.ContinentCode = MaxCurrency.ContinentCode AND cu.CurrencyUsage = MaxCurrency.CurrencyUsage
 WHERE MaxCurrency.CurrencyUsage > 1
 ORDER BY MaxCurrency.ContinentCode

 
