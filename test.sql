SELECT mlp_pony.name, GROUP_CONCAT(mlp_occupation.title SEPARATOR ', ')
FROM mlp_pony
INNER JOIN mlp_ponyOccupation ON mlp_pony.id = mlp_ponyOccupation.ponyID
INNER JOIN mlp_occupation ON mlp_ponyOccupation.occupationID = mlp_occupation.id
GROUP BY mlp_pony.name