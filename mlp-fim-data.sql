--
-- Author: James Pool
-- ONID: 932664412
-- OSU Email: poolj@oregonstate.edu
-- Initial Creation: 4 March 2016
--
-- Filename: mlp-fim-data.sql
-- Description: Initial data creation document for final project
-- 

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

--
-- Data dump for table 'mlp_pony'
--

SET AUTOCOMMIT=0;
INSERT INTO mlp_pony (id, name, gender, cutieMark, typeID, residanceID) VALUES
	(1,'TWILIGHT SPARKLE','F','Pink six-pointed sparkle surrounded by five small white sparkles',1,1),
	(2,'APPLEJACK','F','Three red apples',2,3),
	(3,'FLUTTERSHY','F','Three butterflies with cyan bodies and pink wings',3,4),
	(4,'RARITY','F','Three blue lozenge diamonds',4,5),
	(5,'PINKIE PIE','F','Two blue balloons with yellow strings and one yellow balloon with a blue string',2,6),
	(6,'RAINBOW DASH','F','Blue-yellow-red lighting bolt with cloud',3,7),
	(7,'PRINCESS CELESTIA','F','Stylized sun',1,8),
	(8,'PRINCESS LUNA','F','Crescent moon on a dark purple backgound',1,8),
	(9,'PRINCESS CADANCE','F','Multifaceted light blue crystal heart between gold laces',1,9);
	(10,'SHINING ARMOR','M','Pink six-pointed star on a purple shield with three small light blue stars above',4,9),
	(11,'GRANNY SMITH','F','Apple Pie',2,3),
	(12,'BIG MCINTOSH','M','Green apple sliced in half',2,3);
COMMIT;

--
-- Data dump for table 'mlp_type'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_type (id, name, wings, horn) VALUES
	(1,'ALICORN',TRUE,TRUE),
	(2,'EARTH',FALSE,FALSE),
	(3,'PEGASUS',TRUE,FALSE),
	(4,'UNICORN',FALSE,TRUE);
COMMIT;

--
-- Data dump for table 'mlp_residance'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_residance (id, name, locationID) VALUES
	(1,'CASTLE OF FRIENDSHIP',1),
	(2,'GOLDEN OAK LIBRARY', 1),
	(3,'SWEET APPLE ACRES', 1),
	(4,'FLUTTERSHY''S COTTAGE', 1),
	(5,'CAROUSEL BOTIQUE',1),
	(6,'SUGARCUBE CORNER',1),
	(7,'CLOUDOMINIUM',1),
	(8,'CASTLE OF THE TWO SISTERS',2),
	(9,'CASTLE OF THE CRYSTAL EMPIRE',4);
COMMIT;

--
-- Data dump for table 'mlp_location'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_location (id, name) VALUES
	(1,'PONYVILLE'),
	(2,'CANTERLOT'),
	(3,'CLOUDSDALE'),
	(4,'CRYSTAL EMPIRE'),
	(5,'EVERFREE FOREST'),
	(6,'MANEHATTAN');
COMMIT;

--
-- Data dump for table 'mlp_occupation'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_occupation (id, title) VALUES
	(1,'RULER'),
	(2,'LIBRARIAN'),
	(3,'STUDENT'),
	(4,'FARMER'),
	(5,'ANIMAL CARETAKER'),
	(6,'FASHION DESIGNER'),
	(7,'SHOPKEEPER'),
	(8,'SEAMSTRESS'),
	(9,'BAKER'),
	(10,'PARTY ORGINIZER'),
	(11,'WEATHER PATROL'),
	(12,'PONYTONES SINGER');
COMMIT;

--
-- Data dump for table 'mlp_color'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_color (id, name, hexCode) VALUES
	(1,'MODERATE VIOLET','6D4490'),  -- Twilight Sparkle --
	(2,'MODERATE SAPPHIRE BLUE','3C4D85'),
	(3,'MODERATE VIOLET','7744A1'),
	(4,'BRILLIANT ROSE','F0599C'),
	(5,'PALE, LIGHT GRAYISH MULBERRY','DCAEEE'),
	(6,'MODERATE SAP GREEN','68C85C'),  -- Applejack --
	(7,'PALE, LIGHT GRAYISH OLIVE','FBF9AF'),
	(8,'LIGHT BRILLIANT GAMBOGE','FFC36B'),
	(9,'MODERATE CYAN','1AC1B9'),  -- Fluttershy --
	(10,'PALE, LIGHT GRAYISH ROSE','FCB8D9'),
	(11,'PALE, LIGHT GRAYISH GOLD','FCF4A4'),
	(12,'MODERATE AZURE','558ABE'),  -- Rarity --
	(13,'MODERATE INDIGO','6A50A7'),
	(14,'LIGHT GRAY','F1F1F3'),
	(15,'LIGHT CERULEAN','76D2FB'),  -- Pinkie Pie --
	(16,'BRILLIANT RASPBERRY','F7438C'),
	(17,'PALE, LIGHT GRAYISH RASPBERRY','FAB3D1'),
	(18,'MODERATE CERISE','BE1D78'),  -- Rainbow Dash --
	(19,'LIGHT BRILLIANT RED','FE585A'),
	(20,'LIGHT BRILLIANT VERMILLION','FF7D43'),
	(21,'LIGHT GOLD','F2E576'),
	(22,'MODERATE SAP GREEN','6ECF5B'),
	(23,'BRILLIANT CORNFLOWER BLUE','38ABEE'),
	(24,'MODERATE VIOLET','75459B'),
	(25,'VERY LIGHT CERULEAN','9FE7FF'),
	(26,'PALE, LIGHT GRAYISH MAGENTA','E18FE4'),  -- Princess Celestia --
	(27,'LIGHT CERULEAN','63C6E3'),
	(28,'LIGHT TURQUOISE','64DCB7'),
	(29,'VERY LIGHT COBALT BLUE','93B9FF'),
	(30,'PALE HELIOTROPE','F5ADFF'),
	(31,'LIGHT FUCHSIAISH GRAY','FDF5FB'),
	(32,'MODERATE CYAN','126782'),  -- Princess Luna --
	(33,'MODERATE SAPPHIRE BLUE','2449BE'),
	(34,'GRAYISH PERSIAN BLUE','8E8AC4'),
	(35,'DARK BLUE','373A77'),
	(36,'LIGHT PURPLE','BA6CE1'),  -- Princess Cadance --
	(37,'MODERATE VIOLET','692F9A'),
	(38,'MODERATE ROSE','C53282'),
	(39,'PALE GOLD','FFF1B4'),
	(40,'PALE, LIGHT GRAYISH CERISE','EBAFD1'),
	(41,'MODERATE CERULEAN','1DABD1'),  -- Shining Armor --
	(42,'MODERATE SAPPHIRE BLUE','19339E'),
	(43,'DARK PHTHALO BLUE','202C61'),
	(44,'LIGHT GRAY','FDFDFD'),
	(45,'LIGHT BRILLIANT ORANGE','FFA23A'),  -- Granny Smith --
	(46,'LIGHT GRAY','F9F9F9'),
	(47,'LIGHT LIME GREEN','CFE585'),
	(48,'MODERATE SAP GREEN','5EC34F'),  -- Big McIntosh --
	(49,'BRILLIANT ORANGE','F7B25F'),
	(50,'BRILLIANT AMARANTH','F64A59');
COMMIT;

--
-- Data dump for table 'mlp_ponyOccupation'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_ponyOccupation (id, ponyID, occupationID) VALUES
	(1,1,1),
	(2,2,4),
	(3,3,5),
	(4,4,6),
	(5,4,7),
	(6,4,8),
	(7,5,9),
	(8,5,10),
	(9,6,11),
	(10,7,1),
	(11,8,1),
	(12,9,1),
	(13,10,1),
	(14,12,4),  --- Granny Smith does not have an occupation ---
	(15,4,12),
	(16,3,12),
	(17,12,12);
COMMIT;

--
-- Data dump for table 'mlp_ponyColor'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_ponyColor (id, area, ponyID, colorID) VALUES
	(1,'EYES',1,1),  -- Twilight Sparkle --
	(2,'MANE',1,2),
	(3,'MANE',1,3),
	(4,'MANE',1,4),
	(5,'COAT',1,5),
	(6,'EYES',2,6),  -- Applejack --
	(7,'MANE',2,7),
	(8,'COAT',2,8),
	(9,'EYES',3,9),  -- Fluttershy --
	(10,'MANE',3,10),
	(11,'COAT',4,11),
	(12,'EYES',4,12),  -- Rarity --
	(13,'MANE',4,13),
	(14,'COAT',4,14),
	(15,'EYES',5,15),  -- Pinkie Pie --
	(16,'MANE',5,16),
	(17,'COAT',5,17),
	(18,'EYES',6,18),  -- Rainbow Dash --
	(19,'MANE',6,19),
	(20,'MANE',6,20),
	(21,'MANE',6,21),
	(22,'MANE',6,22),
	(23,'MANE',6,23),
	(24,'MANE',6,24),
	(25,'COAT',6,25),
	(26,'EYES',7.26),  -- Princess Celestia --
	(27,'MANE',7,27),
	(28,'MANE',7,28),
	(29,'MANE',7,29),
	(30,'MANE',7,30),
	(31,'COAT',7,31),
	(32,'EYES',8,32),  -- Princess Luna --
	(33,'MANE',8,33),
	(34,'MANE',8,34),
	(35,'COAT',8,35),
	(36,'EYES',9,36),  -- Princess Cadance --
	(37,'MANE',9,37),
	(38,'MANE',9,38),
	(39,'MANE',9,39),
	(40,'COAT',9,40),
	(41,'EYES',10,41),  -- Shining Armor --
	(42,'MANE',10,42),
	(43,'MANE',10,41),  -- **Mane color = Eye Color**
	(44,'MANE',10,43),
	(45,'COAT',10,44),
	(46,'EYES',11,45),  -- Granny Smith --
	(47,'MANE',11,46),
	(48,'COAT',11,47),
	(49,'EYES',12,48),  -- Big McIntosh --
	(50,'MANE',12,49),
	(51,'COAT',12,50);
COMMIT;