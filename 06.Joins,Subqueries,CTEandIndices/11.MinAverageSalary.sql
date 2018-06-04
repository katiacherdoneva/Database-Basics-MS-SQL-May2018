SELECT MIN(Salary) AS AverageSalary
  FROM (SELECT DepartmentID,
               AVG(Salary) AS Salary
          FROM Employees
		  GROUP BY DepartmentID) AS AverageSalary 
