CREATE PROC usp_GetTownsStartingWith @StartLetter NVARCHAR(50)
AS
   SELECT [Name]
     FROM Towns
    WHERE SUBSTRING([Name], 1, LEN(@StartLetter)) = @StartLetter