--USE SoftUni

CREATE PROC usp_AssignProject (@emloyeeId INT, @projectID INT) 
AS
BEGIN
    BEGIN TRANSACTION
      DECLARE @countProjectsOnEmployee INT = (SELECT (Count(EmployeeID)) 
	                                        FROM EmployeesProjects 
										   WHERE EmployeeID = @emloyeeId)
	 IF(@countProjectsOnEmployee >= 3)
	 BEGIN
	    ROLLBACK
		RAISERROR('The employee has too many projects!', 16, 1)
		RETURN
	 END

	 INSERT INTO EmployeesProjects VALUES
	 (@emloyeeId, @projectID)
	COMMIT
END

