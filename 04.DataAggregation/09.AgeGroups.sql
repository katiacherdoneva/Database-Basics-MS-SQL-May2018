SELECT AgeGroup, COUNT(AgeGroup) AS WizardCount FROM
      (
      SELECT
             CASE
             WHEN w.Age <= 10 THEN '[0-10]'
             WHEN w.Age <= 20 THEN '[11-20]'
             WHEN w.Age <= 30 THEN '[21-30]'
             WHEN w.Age <= 40 THEN '[31-40]'
             WHEN w.Age <= 50 THEN '[41-50]'
             WHEN w.Age <= 60 THEN '[51-60]'
             ELSE '[61+]'
             END 
	      AS AgeGroup
        FROM WizzardDeposits AS w
       ) 
    AS AgeGroups
 GROUP BY AgeGroup