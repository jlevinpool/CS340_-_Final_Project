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
	(6,'RAINBOW DASH','F','Blue-yellow-red lighting bolt with cloud',3,7);
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
	(7,'CLOUDOMINIUM',1);
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
	(11,'WEATHER PATROL');
COMMIT;

--
-- Data dump for table 'mlp_color'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_color (id, name, hexCode) VALUES
	(1,'MODERATE VIOLET','6D4490'),
	(2,'MODERATE SAPPHIRE BLUE','3C4D85'),
	(3,'MODERATE VIOLET','7744A1'),
	(4,'BRILLIANT ROSE','F0599C'),
	(5,'PALE, LIGHT GRAYISH MULBERRY','DCAEEE');
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
	(9,6,11);
COMMIT;

--
-- Data dump for table 'mlp_ponyColor'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_ponyColor (id, area, ponyID, colorID) VALUES
	(1,'EYES',1,1),
	(2,'MANE',1,2),
	(3,'MANE',1,3),
	(4,'MANE',1,4),
	(5,'COAT',1,5);
COMMIT;