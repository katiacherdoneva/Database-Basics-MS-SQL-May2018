CREATE PROC usp_GetHoldersWithBalanceHigherThan @MinMoneyInAccount DECIMAL(10, 2)
AS 
BEGIN
   WITH CTE_MinBalanceAccount (Id) AS
        (SELECT AccountHolderId
		  FROM Accounts
		 GROUP BY AccountHolderId
		HAVING SUM(Balance) > @MinMoneyInAccount)

   SELECT ah.FirstName,
          ah.LastName
     FROM CTE_MinBalanceAccount AS mba
	INNER JOIN  AccountHolders AS ah
	   ON ah.Id = mba.Id
	ORDER BY ah.LastName, ah.FirstName 
END

--EXEC usp_GetHoldersWithBalanceHigherThan 7000

