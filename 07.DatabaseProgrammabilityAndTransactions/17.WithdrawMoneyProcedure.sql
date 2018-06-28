CREATE PROC usp_WithdrawMoney  @AccountId INT, @MoneyAmount DECIMAL(10, 4)
AS
IF(@MoneyAmount >= 0)
BEGIN
      BEGIN TRANSACTION   
	        UPDATE Accounts 
	           SET Balance = Balance - @MoneyAmount
	         WHERE Id = @AccountId

	         IF (@@ROWCOUNT <> 1) 
            BEGIN
             ROLLBACK;
             RAISERROR ('Invalid account!', 16, 1);
             RETURN;
            END
      COMMIT 
END