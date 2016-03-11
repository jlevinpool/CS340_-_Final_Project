-- Pony Occupation 
SELECT mlp_pony.name, GROUP_CONCAT(mlp_occupation.title SEPARATOR ', ')
FROM mlp_pony
INNER JOIN mlp_ponyOccupation ON mlp_pony.id = mlp_ponyOccupation.ponyID
INNER JOIN mlp_occupation ON mlp_ponyOccupation.occupationID = mlp_occupation.id
GROUP BY mlp_pony.name

-- Pony Colors
SELECT T1.ponyName, T1.colorName AS eyeColor, T2.colorName AS coatColor, T3.colorName AS maneColor
FROM (
	SELECT mlp_pony.name AS ponyName, mlp_color.name AS colorName
	FROM mlp_pony
	INNER JOIN mlp_ponyColor ON mlp_pony.id = mlp_ponyColor.ponyID
	INNER JOIN mlp_color ON mlp_ponyColor.colorID = mlp_color.id
	WHERE mlp_ponyColor.area = "EYES"
	) AS T1
INNER JOIN (
	SELECT mlp_pony.name AS ponyName, mlp_color.name AS colorName
	FROM mlp_pony
	INNER JOIN mlp_ponyColor ON mlp_pony.id = mlp_ponyColor.ponyID
	INNER JOIN mlp_color ON mlp_ponyColor.colorID = mlp_color.id
	WHERE mlp_ponyColor.area = "COAT"
	) AS T2
ON T1.ponyName = T2.ponyName
INNER JOIN (
	SELECT mlp_pony.name AS ponyName, GROUP_CONCAT(mlp_color.name SEPARATOR '\n') AS colorName
	FROM mlp_pony
	INNER JOIN mlp_ponyColor ON mlp_pony.id = mlp_ponyColor.ponyID
	INNER JOIN mlp_color ON mlp_ponyColor.colorID = mlp_color.id
	WHERE mlp_ponyColor.area = "MANE"
	GROUP BY mlp_pony.name
	) AS T3
ON T1.ponyName = T3.ponyName