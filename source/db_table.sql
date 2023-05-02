-- Active: 1668065856987@@127.0.0.1@3306
DROP SCHEMA IF EXISTS `project`;

CREATE SCHEMA IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8;
USE `project`;

CREATE TABLE consumer ---下单用户
(C_ID   INT AUTO_INCREMENT,
FIRST_NAME  VARCHAR(20),
LAST_NAME   VARCHAR(20),
PHONE_NUMBER VARCHAR(20),
PROVINCE   VARCHAR(25),
STREET_ADDRESS VARCHAR(40),
PRIMARY KEY(C_ID));

CREATE TABLE merchant ---商家
(M_ID   INT,
M_TAG INT,--标记商家类型
M_NAME VARCHAR(20),
DISTANCE DEC(3,2),
CONSUMPTION_DEVIATION DEC(2,1),
COMSUPTION_PP INT, ---人均消费
BAYES_RANKING DEC(2,1),
NUMBER_DISCOUNTS INT,---套餐数量
PRIMARY KEY(M_ID));

CREATE TABLE history_order ---订单
(O_ID INT AUTO_INCREMENT,
C_ID INT,
M_ID INT,
PRIMARY KEY(O_ID),
FOREIGN KEY(M_ID) REFERENCES merchant(M_ID),
FOREIGN KEY(C_ID) REFERENCES consumer(C_ID));

