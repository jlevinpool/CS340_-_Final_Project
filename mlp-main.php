<!--
// Author: James Pool
// ONID: 932664412
// OSU Email: poolj@oregonstate.edu
// Initial Creation: 28 February 2016
//
// Filename: mlp-fim-schema.sql
// Description: Schema creation document for final project
//
-->

<!-- Connect to Database -->
 <?php
//Turn on error reporting
ini_set('display_errors', 'On');
//MySQL Server Configuration
$serverName = "oniddb.cws.oregonstate.edu";
$userName = "poolj-db";
$password = "uGsEc17p7eW8ijOI";
$dbName = "poolj-db";
//Connects to the database
$mysqli = new mysqli($serverName, $userName, $password, $dbName);
echo "Database Connection Status: ";
if($mysqli->connect_errno){
	echo "Error " . $mysqli->connect_errno . " " . $mysqli->connect_error;
	}
echo "OK";
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<title>My Little Pony - Friendship is Magic</title>
	</head>
	<body>
		<h1>My Little Pony - Friendship is Magic - Pony Database</h1>
		<span>CS 340 - James Pool</span>
		<div>  <!-- Table of General Information -->
			<table border="1" style="width:100%">
				<caption>General Information</caption>
				<tr>
					<th>Name</th>
					<th>Type</th>
					<th>Gender</th>
					<th>Residance</th>
					<th>Cutie Mark</th>
				</tr>
<!-- Fetch List of Pony General Information -->
<?php
if(!($stmt = $mysqli->prepare("
		SELECT mlp_pony.name, mlp_type.name, mlp_pony.gender, mlp_residance.name, mlp_location.name, mlp_pony.cutieMark 
		FROM mlp_pony 
		INNER JOIN mlp_type ON mlp_pony.typeID = mlp_type.id 
		INNER JOIN mlp_residance ON mlp_pony.residanceID = mlp_residance.id
		INNER JOIN mlp_location ON mlp_residance.locationID = mlp_location.id
		ORDER BY mlp_pony.name ASC
		"))){
	echo "Prepare failed: "  . $stmt->errno . " " . $stmt->error;
}
if(!$stmt->execute()){
	echo "Execute failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
if(!$stmt->bind_result($name, $type, $gender, $residance, $location, $cutieMark)){
	echo "Bind failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
while($stmt->fetch()){
 echo "<tr>\n<td>\n" . $name 
	. "\n</td>\n<td>\n" . $type 
	. "\n</td>\n<td>\n" . $gender 
	. "\n</td>\n<td>\n" . $residance . ", " . $location
	. "\n</td>\n<td>\n" . $cutieMark 
	. "\n</td>\n</tr>";
}
$stmt->close();
?>
			</table>
		</div>
		</br>
		<div>  <!-- Table of Pony Occupations -->
			<table border="1" style="width:100%">
				<caption>Occupations</caption>
				<tr>
					<th>Name</th>
					<th>Occupations</th>
				</tr>
<!-- Fetch List of Pony Occcupations -->
<?php
if(!($stmt = $mysqli->prepare("
		SELECT mlp_pony.name, GROUP_CONCAT(mlp_occupation.title SEPARATOR ', ')
		FROM mlp_pony
		INNER JOIN mlp_ponyOccupation ON mlp_pony.id = mlp_ponyOccupation.ponyID
		INNER JOIN mlp_occupation ON mlp_ponyOccupation.occupationID = mlp_occupation.id
		GROUP BY mlp_pony.name
		"))){
	echo "Prepare failed: "  . $stmt->errno . " " . $stmt->error;
}
if(!$stmt->execute()){
	echo "Execute failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
if(!$stmt->bind_result($name, $occupations)){
	echo "Bind failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
while($stmt->fetch()){
 echo "<tr>\n<td>\n" . $name
	. "\n</td>\n<td>\n" . $occupations
	. "\n</td>\n</tr>";
}
?>
			</table>
		</div>
		</br>
		<div>  <!-- Table of Pony Colors -->
			<table border="1" style="width:100%">
				<caption>Color Information</caption>
				<tr>
					<th>Name</th>
					<th>Eye Color</th>
					<th>Coat Color</th>
					<th>Mane Color</th>
				</tr>
<!-- Fetch List of Pony Colors -->
<?php
if(!($stmt = $mysqli->prepare("
SELECT T1.ponyName, T1.colorName AS eyeColor, T2.colorName AS coatColor, T3.colorName AS maneColor
FROM (
	SELECT mlp_pony.name AS ponyName, mlp_color.name AS colorName
	FROM mlp_pony
	INNER JOIN mlp_ponyColor ON mlp_pony.id = mlp_ponyColor.ponyID
	INNER JOIN mlp_color ON mlp_ponyColor.colorID = mlp_color.id
	WHERE mlp_ponyColor.area = 'EYES'
	) AS T1
INNER JOIN (
	SELECT mlp_pony.name AS ponyName, mlp_color.name AS colorName
	FROM mlp_pony
	INNER JOIN mlp_ponyColor ON mlp_pony.id = mlp_ponyColor.ponyID
	INNER JOIN mlp_color ON mlp_ponyColor.colorID = mlp_color.id
	WHERE mlp_ponyColor.area = 'COAT'
	) AS T2
ON T1.ponyName = T2.ponyName
INNER JOIN (
	SELECT mlp_pony.name AS ponyName, GROUP_CONCAT(mlp_color.name SEPARATOR '</br>') AS colorName
	FROM mlp_pony
	INNER JOIN mlp_ponyColor ON mlp_pony.id = mlp_ponyColor.ponyID
	INNER JOIN mlp_color ON mlp_ponyColor.colorID = mlp_color.id
	WHERE mlp_ponyColor.area = 'MANE'
	GROUP BY mlp_pony.name
	) AS T3
ON T1.ponyName = T3.ponyName
		"))){
	echo "Prepare failed: "  . $stmt->errno . " " . $stmt->error;
}
if(!$stmt->execute()){
	echo "Execute failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
if(!$stmt->bind_result($name, $eyeColor, $coatColor, $maneColor)){
	echo "Bind failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
while($stmt->fetch()){
 echo "<tr>\n<td>\n" . $name 
	. "\n</td>\n<td>\n" . $eyeColor 
	. "\n</td>\n<td>\n" . $coatColor
	. "\n</td>\n<td>\n" . $maneColor 
	. "\n</td>\n</tr>";
}
$stmt->close();
?>
			</table>
		</div>
		</br>
	</body>
</html>