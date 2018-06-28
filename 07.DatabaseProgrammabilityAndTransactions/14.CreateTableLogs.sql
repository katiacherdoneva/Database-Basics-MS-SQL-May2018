--USE Bank

--CREATE TABLE Logs(
--LogId INT PRIMARY KEY IDENTITY NOT NULL, 
--AccountId  INT NOT NULL, 
--OldSum DECIMAL(10, 2), 
--NewSum DECIMAL(10, 2)
--)

CREATE TRIGGER tr_AccountBalanceChange ON Accounts FOR UPDATE
AS
   INSERT INTO Logs
   SELECT a.Id,
          d.Balance, 
		  i.Balance
	 FROM Accounts AS a
   INNER JOIN inserted AS i
       ON i.AccountHolderId = a.Id
   INNER JOIN deleted AS d
       ON d.AccountHolderId = a.Id
