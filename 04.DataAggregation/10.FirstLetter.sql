SELECT DISTINCT FirstLetter FROM
       (
       SELECT DiSTINCT LEFT(FirstName, 1) AS FirstLetter       
       FROM WizzardDeposits
       WHERE DepositGroup = 'Troll Chest'
       )
	AS  FirstLetters
 GROUP BY FirstLetter
 ORDER BY FirstLetter ASC