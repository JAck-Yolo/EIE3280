-- Active: 1668517554814@@127.0.0.1@3306@project

-- DELETE FROM package;
-- DELETE FROM user;

LOAD DATA LOCAL
INFILE 'source/data_generation/dataset/merchant.csv'
INTO TABLE merchant
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL
INFILE 'source/data_generation/dataset/user.csv'
INTO TABLE user
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- SET FOREIGN_KEY_CHECKS = 1;
-- DELETE FROM `machine_type`;
-- DELETE FROM `chip`;
-- DELETE FROM `chip_type`;
-- SELECT * FROM `chip_type`;
-- SELECT * FROM `machine`;
-- SELECT * FROM chip;
-- ALTER TABLE machine_type MODIFY COLUMN machine_version varchar(20);