/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : sailboats

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 14/11/2021 15:19:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for boats
-- ----------------------------
DROP TABLE IF EXISTS `boats`;
CREATE TABLE `boats` (
  `bid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of boats
-- ----------------------------
BEGIN;
INSERT INTO `boats` VALUES ('101', 'Interlake', 'Blue');
INSERT INTO `boats` VALUES ('102', 'Interlake', 'Red');
INSERT INTO `boats` VALUES ('103', 'Clipper', 'Green');
INSERT INTO `boats` VALUES ('104', 'Marine', 'Red');
COMMIT;

-- ----------------------------
-- Table structure for reserves
-- ----------------------------
DROP TABLE IF EXISTS `reserves`;
CREATE TABLE `reserves` (
  `sid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `day` date NOT NULL,
  PRIMARY KEY (`sid`,`bid`,`day`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of reserves
-- ----------------------------
BEGIN;
INSERT INTO `reserves` VALUES ('22', '101', '1998-10-10');
INSERT INTO `reserves` VALUES ('22', '102', '1998-10-10');
INSERT INTO `reserves` VALUES ('22', '103', '1998-10-08');
INSERT INTO `reserves` VALUES ('22', '104', '1998-10-07');
INSERT INTO `reserves` VALUES ('31', '102', '1998-11-10');
INSERT INTO `reserves` VALUES ('31', '103', '1998-11-06');
INSERT INTO `reserves` VALUES ('31', '104', '1998-11-12');
INSERT INTO `reserves` VALUES ('64', '101', '1998-09-05');
INSERT INTO `reserves` VALUES ('64', '102', '1998-09-05');
INSERT INTO `reserves` VALUES ('74', '103', '1998-09-08');
COMMIT;

-- ----------------------------
-- Table structure for sailors
-- ----------------------------
DROP TABLE IF EXISTS `sailors`;
CREATE TABLE `sailors` (
  `sid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sailors
-- ----------------------------
BEGIN;
INSERT INTO `sailors` VALUES ('22', 'Dustin', 7, 45);
INSERT INTO `sailors` VALUES ('29', 'Brutus', 1, 33);
INSERT INTO `sailors` VALUES ('31', 'Lubber', 8, 55);
INSERT INTO `sailors` VALUES ('32', 'Andy', 8, 25);
INSERT INTO `sailors` VALUES ('58', 'Rusty', 10, 35);
INSERT INTO `sailors` VALUES ('64', 'Horatio', 7, 35);
INSERT INTO `sailors` VALUES ('71', 'Zorba', 10, 16);
INSERT INTO `sailors` VALUES ('74', 'Jeff', 9, 35);
INSERT INTO `sailors` VALUES ('85', 'Art', 3, 25);
INSERT INTO `sailors` VALUES ('95', 'Bob', 3, 63);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
