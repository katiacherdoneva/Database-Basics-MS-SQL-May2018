SELECT SUM([Difference]) AS SumDifference FROM
       (SELECT FirstName, DepositAmount,
	           LEAD(FirstName, 1) OVER(ORDER BY Id) AS [Guest Wizard],
		       LEAD(DepositAmount, 1) OVER(ORDER BY Id) AS [Guest Wizard Deposit],
		       DepositAmount - LEAD(DepositAmount, 1) OVER(ORDER BY Id) AS [Difference]
		 FROM WizzardDeposits
		 )
	  AS SumDiff