--USE Diablo

CREATE FUNCTION ufn_CashInUsersGames(@GameName NVARCHAR(50))
RETURNS @CashSum TABLE
(
  CashSum DECIMAL(10, 4)
)
AS
BEGIN
  INSERT INTO @CashSum
  SELECT SUM(Cash)
    FROM (SELECT ug.Cash,
                  Row_Number() OVER(ORDER BY ug.Cash DESC) AS RowNumber
             FROM UsersGames AS ug
			 INNER JOIN Games AS g
               ON g.Id = ug.GameId
			   WHERE g.Name = @GameName) 
      AS Cash
   WHERE RowNumber % 2 = 1
  RETURN;
END

--select * from [dbo].ufn_CashInUsersGames('Love in a mist')
