SELECT DepartmentId,
       MAX(Salary)
  FROM Employees
 GROUP BY DepartmentId
HAVING MAX(Salary) NOT BETWEEN 30000 AND 70000
