/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : work

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 07/11/2021 16:01:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptno` varchar(255) NOT NULL COMMENT '部门编号',
  `dname` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` VALUES ('10', 'ACCOUNTING', 'NEW YORK');
INSERT INTO `dept` VALUES ('20', 'RESEARCH', 'DALLAS');
INSERT INTO `dept` VALUES ('30', 'SALES ', 'CHCAGO');
INSERT INTO `dept` VALUES ('40', 'OPERATIONS', 'BOSTON');
COMMIT;

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `empno` varchar(255) NOT NULL COMMENT '职工编号',
  `ename` varchar(255) DEFAULT NULL COMMENT '职工姓名',
  `mgr` varchar(255) DEFAULT NULL COMMENT '上级主管',
  `job` varchar(255) DEFAULT NULL COMMENT '工种',
  `hiredate` datetime DEFAULT NULL COMMENT '入职日期',
  `comm` int DEFAULT NULL COMMENT '销售业绩',
  `sal` int DEFAULT NULL COMMENT '薪资',
  `deptno` varchar(255) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`empno`),
  KEY `deptno` (`deptno`),
  CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of emp
-- ----------------------------
BEGIN;
INSERT INTO `emp` VALUES ('7369', 'SMITH ', '7902', 'CLERK ', '1980-11-17 00:00:00', NULL, 800, '20');
INSERT INTO `emp` VALUES ('7499', 'ALLEN ', '7698', 'SALESMAN', '1981-02-20 00:00:00', 500, 1600, '30');
INSERT INTO `emp` VALUES ('7521', 'WORD', '7698', 'SALESMAN', '1981-02-22 00:00:00', 500, 1250, '30');
INSERT INTO `emp` VALUES ('7566', 'JONES ', '7839', 'MANAGER ', '1981-04-02 00:00:00', NULL, 2975, '20');
INSERT INTO `emp` VALUES ('7654', 'MARTIN', '7698', 'SALESMAN', '1981-09-28 00:00:00', 1400, 1250, '30');
INSERT INTO `emp` VALUES ('7698', 'BLACK ', '7839', 'MANAGER ', '1981-05-01 00:00:00', NULL, 1850, '30');
INSERT INTO `emp` VALUES ('7782', 'CLARK ', '7839', 'MANAGER ', '1981-06-09 00:00:00', NULL, 2450, '10');
INSERT INTO `emp` VALUES ('7788', 'SCOTT ', '7566', 'ANALYST ', '1981-12-09 00:00:00', NULL, 3000, '20');
INSERT INTO `emp` VALUES ('7839', 'KING', NULL, 'PRESIDENT ', '1981-12-17 00:00:00', NULL, 5000, '10');
INSERT INTO `emp` VALUES ('7844', 'TURNER', '7698', 'SALESMAN', '1981-09-08 00:00:00', 0, 1500, '30');
INSERT INTO `emp` VALUES ('7876', 'ADAMS ', '7788', 'CLERK ', '1981-09-23 00:00:00', NULL, 1100, '20');
INSERT INTO `emp` VALUES ('7900', 'JAMES ', '7698', 'CLERK ', '1981-11-03 00:00:00', NULL, 950, '30');
INSERT INTO `emp` VALUES ('7902', 'FORD', '7566', 'ANALYST ', '1981-11-03 00:00:00', NULL, 3000, '20');
INSERT INTO `emp` VALUES ('7934', 'MILLER', '7788', 'CLERK ', '1982-01-23 00:00:00', NULL, 1300, '10');
COMMIT;

-- ----------------------------
-- Table structure for salgrade
-- ----------------------------
DROP TABLE IF EXISTS `salgrade`;
CREATE TABLE `salgrade` (
  `grade` varchar(255) NOT NULL COMMENT '薪资等级',
  `losal` int DEFAULT NULL COMMENT '最低薪资',
  `hisal` int DEFAULT NULL COMMENT '最高薪资',
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of salgrade
-- ----------------------------
BEGIN;
INSERT INTO `salgrade` VALUES ('1', 700, 1200);
INSERT INTO `salgrade` VALUES ('2', 1201, 1400);
INSERT INTO `salgrade` VALUES ('3', 1401, 2000);
INSERT INTO `salgrade` VALUES ('4', 2001, 3000);
INSERT INTO `salgrade` VALUES ('5', 3001, 9999);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
