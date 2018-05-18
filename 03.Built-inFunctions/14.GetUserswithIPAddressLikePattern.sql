SELECT DISTINCT Username, 
       IPAddress
  FROM UsersGames, Users
 WHERE IPAddress LIKE '___.1%.%.___'
 ORDER BY Username