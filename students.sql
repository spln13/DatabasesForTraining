/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : course

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 08/11/2021 21:32:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c
-- ----------------------------
DROP TABLE IF EXISTS `c`;
CREATE TABLE `c` (
  `Cno` char(4) NOT NULL,
  `Cname` char(40) NOT NULL,
  `Cpno` char(4) DEFAULT NULL,
  `Ccredit` smallint DEFAULT NULL,
  PRIMARY KEY (`Cno`),
  KEY `Cpno` (`Cpno`),
  CONSTRAINT `c_ibfk_1` FOREIGN KEY (`Cpno`) REFERENCES `c` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of c
-- ----------------------------
BEGIN;
INSERT INTO `c` VALUES ('1', '数据库', '5', 4);
INSERT INTO `c` VALUES ('10', 'CI', NULL, 3);
INSERT INTO `c` VALUES ('2', '数学', '4', 2);
INSERT INTO `c` VALUES ('3', '信息系统', '1', 4);
INSERT INTO `c` VALUES ('4', '操作系统', '6', 3);
INSERT INTO `c` VALUES ('5', '数据结构', '7', 4);
INSERT INTO `c` VALUES ('6', '数据处理', '5', 2);
INSERT INTO `c` VALUES ('7', 'PASCAL语言', '6', 4);
INSERT INTO `c` VALUES ('8', '离散数学', NULL, 3);
INSERT INTO `c` VALUES ('9', '线性代数', '2', 3);
COMMIT;

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s` (
  `Sno` char(20) NOT NULL,
  `Sname` char(20) DEFAULT NULL,
  `Sage` smallint DEFAULT NULL,
  `Ssex` char(2) DEFAULT NULL,
  `Sdept` char(20) DEFAULT NULL,
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `Sname` (`Sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of s
-- ----------------------------
BEGIN;
INSERT INTO `s` VALUES ('201215121', '李勇', 20, '男', '计算机');
INSERT INTO `s` VALUES ('201215122', '刘晨', 19, '女', '计算机');
INSERT INTO `s` VALUES ('201215123', '王敏', 19, '女', '文学');
INSERT INTO `s` VALUES ('201215124', '王志', 20, '男', '信科');
INSERT INTO `s` VALUES ('201215125', '张立', 19, '男', '信科');
INSERT INTO `s` VALUES ('201215126', '万芳', 19, '女', '文学');
INSERT INTO `s` VALUES ('201215127', '张三', 24, '男', '财管');
INSERT INTO `s` VALUES ('95010101', '赵清', 25, '男', '计算机');
INSERT INTO `s` VALUES ('95010102', '王一', 21, '女', '计算机');
INSERT INTO `s` VALUES ('95010103', '李美', 21, '男', '计算机');
INSERT INTO `s` VALUES ('95010201', '人门', 24, '女', '计算机');
INSERT INTO `s` VALUES ('95010202', '王晓', 23, '女', '计算机');
INSERT INTO `s` VALUES ('95010203', '李鸿', 25, '女', '计算机');
INSERT INTO `s` VALUES ('95010204', '打法', 24, '男', '计算机');
INSERT INTO `s` VALUES ('95010205', '距离', 24, '女', '计算机');
INSERT INTO `s` VALUES ('95020101', '张会', 22, '男', '化工');
INSERT INTO `s` VALUES ('95020102', '好人', 21, '男', '化工');
INSERT INTO `s` VALUES ('95020103', '会类', 24, '男', '化工');
INSERT INTO `s` VALUES ('95020104', '诸葛亮', 23, '男', '数学');
INSERT INTO `s` VALUES ('95020301', '张亮', 21, '男', '数学');
INSERT INTO `s` VALUES ('95020302', '张珂', 23, '女', '计算机');
INSERT INTO `s` VALUES ('95020303', '詹姆斯', 23, '男', '数学');
COMMIT;

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `Sno` char(20) NOT NULL,
  `Cno` char(4) NOT NULL,
  `Grade` smallint DEFAULT NULL,
  PRIMARY KEY (`Sno`,`Cno`),
  KEY `Cno` (`Cno`),
  CONSTRAINT `sc_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `s` (`Sno`),
  CONSTRAINT `sc_ibfk_2` FOREIGN KEY (`Cno`) REFERENCES `c` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sc
-- ----------------------------
BEGIN;
INSERT INTO `sc` VALUES ('201215121', '1', 92);
INSERT INTO `sc` VALUES ('201215121', '2', 85);
INSERT INTO `sc` VALUES ('201215121', '3', 88);
INSERT INTO `sc` VALUES ('201215121', '4', 87);
INSERT INTO `sc` VALUES ('201215121', '5', 91);
INSERT INTO `sc` VALUES ('201215121', '7', 88);
INSERT INTO `sc` VALUES ('201215121', '9', 82);
INSERT INTO `sc` VALUES ('201215122', '10', 97);
INSERT INTO `sc` VALUES ('201215122', '2', 90);
INSERT INTO `sc` VALUES ('201215122', '3', 80);
INSERT INTO `sc` VALUES ('201215127', '1', 86);
INSERT INTO `sc` VALUES ('201215127', '10', 70);
INSERT INTO `sc` VALUES ('201215127', '4', 78);
INSERT INTO `sc` VALUES ('95010101', '1', 80);
INSERT INTO `sc` VALUES ('95010101', '2', 100);
INSERT INTO `sc` VALUES ('95010101', '3', 80);
INSERT INTO `sc` VALUES ('95010101', '5', 80);
INSERT INTO `sc` VALUES ('95010102', '1', 82);
INSERT INTO `sc` VALUES ('95010102', '10', 81);
INSERT INTO `sc` VALUES ('95010102', '2', 80);
INSERT INTO `sc` VALUES ('95010102', '3', 80);
INSERT INTO `sc` VALUES ('95010102', '4', 56);
INSERT INTO `sc` VALUES ('95010102', '5', 80);
INSERT INTO `sc` VALUES ('95010103', '1', 80);
INSERT INTO `sc` VALUES ('95010103', '10', 99);
INSERT INTO `sc` VALUES ('95010103', '2', 80);
INSERT INTO `sc` VALUES ('95010103', '3', 80);
INSERT INTO `sc` VALUES ('95010103', '4', 80);
INSERT INTO `sc` VALUES ('95010103', '5', 92);
INSERT INTO `sc` VALUES ('95010201', '1', 54);
INSERT INTO `sc` VALUES ('95010201', '2', 80);
INSERT INTO `sc` VALUES ('95010201', '3', 80);
INSERT INTO `sc` VALUES ('95010201', '4', 80);
INSERT INTO `sc` VALUES ('95010201', '5', NULL);
INSERT INTO `sc` VALUES ('95010201', '6', 80);
INSERT INTO `sc` VALUES ('95010202', '1', 80);
INSERT INTO `sc` VALUES ('95010202', '2', 80);
INSERT INTO `sc` VALUES ('95010202', '3', 80);
INSERT INTO `sc` VALUES ('95010202', '4', 80);
INSERT INTO `sc` VALUES ('95010202', '5', 43);
INSERT INTO `sc` VALUES ('95010202', '6', 80);
INSERT INTO `sc` VALUES ('95010203', '1', 80);
INSERT INTO `sc` VALUES ('95010203', '10', 98);
INSERT INTO `sc` VALUES ('95010203', '2', 80);
INSERT INTO `sc` VALUES ('95010203', '3', 80);
INSERT INTO `sc` VALUES ('95010204', '1', 80);
INSERT INTO `sc` VALUES ('95010204', '2', 80);
INSERT INTO `sc` VALUES ('95010204', '3', 80);
INSERT INTO `sc` VALUES ('95010205', '1', 80);
INSERT INTO `sc` VALUES ('95010205', '10', 58);
INSERT INTO `sc` VALUES ('95010205', '2', 80);
INSERT INTO `sc` VALUES ('95010205', '3', 80);
INSERT INTO `sc` VALUES ('95010205', '4', 80);
INSERT INTO `sc` VALUES ('95010205', '5', 80);
INSERT INTO `sc` VALUES ('95010205', '6', 80);
INSERT INTO `sc` VALUES ('95020101', '1', 80);
INSERT INTO `sc` VALUES ('95020101', '10', 99);
INSERT INTO `sc` VALUES ('95020101', '2', 80);
INSERT INTO `sc` VALUES ('95020101', '3', 75);
INSERT INTO `sc` VALUES ('95020101', '4', 0);
INSERT INTO `sc` VALUES ('95020102', '1', 71);
INSERT INTO `sc` VALUES ('95020102', '2', 80);
INSERT INTO `sc` VALUES ('95020102', '3', 80);
INSERT INTO `sc` VALUES ('95020103', '1', 80);
INSERT INTO `sc` VALUES ('95020103', '10', 58);
INSERT INTO `sc` VALUES ('95020103', '2', 80);
INSERT INTO `sc` VALUES ('95020103', '3', 96);
INSERT INTO `sc` VALUES ('95020103', '4', 80);
INSERT INTO `sc` VALUES ('95020103', '5', 80);
INSERT INTO `sc` VALUES ('95020303', '6', 78);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
