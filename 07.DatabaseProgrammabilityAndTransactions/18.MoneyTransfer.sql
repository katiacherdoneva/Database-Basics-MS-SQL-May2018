CREATE PROC usp_TransferMoney(@SenderId INT, @ReceiverId INT, @Amount DECIMAL(10, 4))
AS
BEGIN
     BEGIN TRANSACTION
	      EXEC usp_WithdrawMoney @SenderId, @Amount

	      DECLARE @BalanceSender DECIMAL(10, 4) = (SELECT Balance FROM Accounts 
	                           WHERE Id = @SenderId)
	       IF(@BalanceSender < 0)
		  BEGIN
		   ROLLBACK
		   RAISERROR('Not enough money.', 16, 1)
		  END
		  EXEC usp_DepositMoney @ReceiverId, @Amount
	 COMMIT 
END 

