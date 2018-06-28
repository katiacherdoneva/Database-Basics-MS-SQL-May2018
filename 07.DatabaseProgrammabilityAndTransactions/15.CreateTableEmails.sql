CREATE TABLE NotificationEmails(
Id INT PRIMARY KEY IDENTITY NOT NULL, 
Recipient INT NOT NULL, 
[Subject] NVARCHAR(MAX) NOT NULL, 
Body NVARCHAR(MAX) NOT NULL
)

CREATE TRIGGER tr_LogsNotificationEmails ON Logs FOR INSERT
AS
BEGIN 
       INSERT INTO NotificationEmails
	   SELECT i.AccountId,
	          CONCAT('Balance change for account: ', i.AccountId),
			  CONCAT('On ', GETDATE(), ' your balance was changed from ', OldSum, ' to ', NewSum, ' .' )		 
	     FROM inserted AS i
END 