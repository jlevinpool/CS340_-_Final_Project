--
-- Author: James Pool
-- ONID: 932664412
-- OSU Email: poolj@oregonstate.edu
-- Initial Creation: 28 February 2016
--
-- Filename: dropTables.sql
-- Description: Drops all tables related to mlp-fim (allows starting from clean)
-- 

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `mlp_color`;
DROP TABLE IF EXISTS `mlp_location`;
DROP TABLE IF EXISTS `mlp_occupation`;
DROP TABLE IF EXISTS `mlp_pony`;
DROP TABLE IF EXISTS `mlp_ponyColor`;
DROP TABLE IF EXISTS `mlp_ponyOccupation`;
DROP TABLE IF EXISTS `mlp_residance`;
DROP TABLE IF EXISTS `mlp_type`;
SET FOREIGN_KEY_CHECKS = 1;