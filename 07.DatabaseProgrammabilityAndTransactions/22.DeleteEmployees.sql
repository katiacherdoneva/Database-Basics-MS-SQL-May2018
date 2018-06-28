CREATE TABLE Deleted_Employees(
EmployeeId INT PRIMARY KEY NOT NULL, 
FirstName NVARCHAR(50) NOT NULL, 
LastName NVARCHAR(50) NOT NULL, 
MiddleName NVARCHAR(50) NOT NULL, 
JobTitle NVARCHAR(50) NOT NULL, 
DepartmentId INT NOT NULL, 
Salary DECIMAL(15, 4) NOT NULL
) 
GO
CREATE TRIGGER tr_Deleted_Employees ON Employees
FOR DELETE
AS
BEGIN
     INSERT INTO Deleted_Employees 
	 SELECT EmployeeId PK, 
	        FirstName, 	 
	 LastName, 
	 MiddleName, 
	 JobTitle, 
	 DepartmentId, 
	 Salary 
	 FROM deleted
END