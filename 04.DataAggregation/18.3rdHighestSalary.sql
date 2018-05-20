SELECT ThirthMaxSalaries.DepartmentID, ThirthMaxSalaries.Salary
  FROM (SELECT DepartmentID, 
               MAX(Salary) AS Salary,
	           DENSE_RANK() OVER (PARTITION BY DepartmentId ORDER BY Salary DESC) AS RANK
		  FROM Employees
		 GROUP BY DepartmentID, Salary)
    AS ThirthMaxSalaries
 WHERE RANK = 3
