CREATE PROC usp_DeleteEmployeesFromDepartment (@departmentId INT)
AS
   DELETE FROM EmployeesProjects
    WHERE EmployeeID IN (
		  SELECT EmployeeID FROM Employees
		  WHERE DepartmentID = @departmentId)

    ALTER TABLE Departments
    ALTER COLUMN ManagerID INT NULL
   UPDATE Employees
      SET ManagerID = NULL
    WHERE ManagerID IN (
		  SELECT EmployeeID FROM Employees
		  WHERE DepartmentID = @departmentId)

   UPDATE Departments
      SET ManagerID = NULL
    WHERE ManagerID IN (
		  SELECT EmployeeID FROM Employees
		   WHERE DepartmentID = @departmentId)

   DELETE FROM Employees
    WHERE EmployeeID IN (
		  SELECT EmployeeID FROM Employees
		   WHERE DepartmentID = @departmentId)

   DELETE FROM Departments
    WHERE DepartmentID = @departmentId

   SELECT COUNT(*) AS EmployeesCount FROM Employees
    WHERE DepartmentID = @departmentId