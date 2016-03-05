--
-- Author: James Pool
-- ONID: 932664412
-- OSU Email: poolj@oregonstate.edu
-- Initial Creation: 4 March 2016
--
-- Filename: mlp-fim-data.sql
-- Description: Initial data creation document for final project
-- 

--
-- Data dump for table 'mlp_pony'
--

SET AUTOCOMMIT=0;
INSERT INTO mlp_pony (id, name, gender, cutieMark) VALUES (
	(1,'TWILIGHT SPARKLE','F','Pink six-pointed sparkle surrounded by five small white sparkles'),
	(2,'APPLEJACK','F','Three red apples'),
	(3,'FLUTTERSHY','F','Three butterflies with cyan bodies and pink wings'),
	(4,'RARITY','F','Three blue lozenge diamonds'),
	(5,'PINKIE PIE','F','Two blue balloons with yellow strings and one yellow balloon with a blue string'),
	(6,'RAINBOW DASH','F','Blue-yellow-red lighting bolt with cloud')
);
COMMIT;

--
-- Data dump for table 'mlp_type'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_type (id, name, wings, horn) VALUES (
	(1,'ALICORN',TRUE,TRUE),
	(2,'EARTH',FALSE,FALSE),
	(3,'PEGASUS',TRUE,FALSE),
	(4,'UNICORN',FALSE,TRUE),
);
COMMIT;

--
-- Data dump for table 'mlp_location'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_location (id, name) VALUES (
	(1,'PONYVILLE'),
	(2,'CANTERLOT'),
	(3,'CLOUDSDALE'),
	(4,'CRYSTAL EMPIRE'),
	(5,'EVERFREE FOREST'),
	(6,'MANEHATTAN')	
);
COMMIT;

--
-- Data dump for table 'mlp_occupation'
--
SET AUTOCOMMIT=0;
INSERT INTO mlp_occupation (
	(1,)
);
COMMIT;