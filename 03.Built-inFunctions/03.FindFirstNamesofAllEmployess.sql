SELECT FirstName 
  FROM Employees
 WHERE (DepartmentID IN(3, 10) AND (HireDate >= 1995 OR HireDate <= 2005))
