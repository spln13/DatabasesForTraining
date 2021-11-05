/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : student

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 05/11/2021 23:28:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `Cno` char(4) NOT NULL,
  `Cname` char(40) NOT NULL,
  `Cpno` char(4) DEFAULT NULL,
  `Ccredit` smallint DEFAULT NULL,
  PRIMARY KEY (`Cno`),
  KEY `Cpno` (`Cpno`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Cpno`) REFERENCES `course` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of course
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES ('1', '数据库', '5', 4);
INSERT INTO `course` VALUES ('2', '数学', '4', 2);
INSERT INTO `course` VALUES ('3', '信息系统', '1', 4);
INSERT INTO `course` VALUES ('4', '操作系统', '6', 3);
INSERT INTO `course` VALUES ('5', '数据结构', '7', 4);
INSERT INTO `course` VALUES ('6', '数据处理', '5', 2);
INSERT INTO `course` VALUES ('7', 'PASCAL语言', '6', 4);
INSERT INTO `course` VALUES ('8', '离散数学', NULL, 3);
INSERT INTO `course` VALUES ('9', '线性代数', NULL, 3);
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
  CONSTRAINT `sc_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `student` (`Sno`),
  CONSTRAINT `sc_ibfk_2` FOREIGN KEY (`Cno`) REFERENCES `course` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sc
-- ----------------------------
BEGIN;
INSERT INTO `sc` VALUES ('201215121', '1', 92);
INSERT INTO `sc` VALUES ('201215121', '2', 85);
INSERT INTO `sc` VALUES ('201215121', '3', 88);
INSERT INTO `sc` VALUES ('201215122', '2', 90);
INSERT INTO `sc` VALUES ('201215122', '3', 80);
COMMIT;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Sno` char(20) NOT NULL,
  `Sname` char(20) DEFAULT NULL,
  `Ssex` char(2) DEFAULT NULL,
  `Sage` smallint DEFAULT NULL,
  `Sdept` char(20) DEFAULT NULL,
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `Sname` (`Sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('201215121', '李勇', '男', 20, 'CS');
INSERT INTO `student` VALUES ('201215122', '刘晨', '女', 19, 'CS');
INSERT INTO `student` VALUES ('201215123', '王敏', '女', 19, 'MA');
INSERT INTO `student` VALUES ('201215124', '王志', '男', 20, 'IS');
INSERT INTO `student` VALUES ('201215125', '张立', '男', 19, 'IS');
INSERT INTO `student` VALUES ('201215126', '万芳', '女', 19, 'MA');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
