/*
Navicat MySQL Data Transfer

Source Server         : docker_image
Source Server Version : 50562
Source Host           : 192.168.1.19:3306
Source Database       : fss

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-03-26 12:38:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for session_schedule
-- ----------------------------
DROP TABLE IF EXISTS `session_schedule`;
CREATE TABLE `session_schedule` (
  `objid` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `session_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of session_schedule
-- ----------------------------
INSERT INTO `session_schedule` VALUES ('1', 'Session 1', '2010-06-07', '2010-06-11', '4');
INSERT INTO `session_schedule` VALUES ('2', 'Session 2', '2010-06-14', '2010-06-25', '8');
INSERT INTO `session_schedule` VALUES ('3', 'Session 3', '2010-06-28', '2010-07-01', '4');
INSERT INTO `session_schedule` VALUES ('4', 'Session 4', '2010-07-06', '2010-07-15', '8');
INSERT INTO `session_schedule` VALUES ('5', 'Session 5', '2010-07-19', '2010-07-23', '5');
INSERT INTO `session_schedule` VALUES ('6', 'Session 6', '2010-07-26', '2010-07-30', '5');
INSERT INTO `session_schedule` VALUES ('7', 'Session 7', '2010-08-02', '2010-08-12', '8');
SET FOREIGN_KEY_CHECKS=1;
