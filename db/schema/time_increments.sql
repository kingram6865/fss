/*
Navicat MySQL Data Transfer

Source Server         : docker_image
Source Server Version : 50562
Source Host           : 192.168.1.19:3306
Source Database       : fss

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-03-26 12:38:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for time_increments
-- ----------------------------
DROP TABLE IF EXISTS `time_increments`;
CREATE TABLE `time_increments` (
  `objid` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of time_increments
-- ----------------------------
INSERT INTO `time_increments` VALUES ('1', '09:00:00', '09:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('2', '09:00:00', '09:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('3', '09:00:00', '09:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('4', '09:20:00', '09:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('5', '09:20:00', '09:50:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('6', '09:20:00', '10:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('7', '09:30:00', '09:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('8', '09:30:00', '10:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('9', '09:30:00', '10:10:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('10', '09:40:00', '10:00:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('11', '09:40:00', '10:10:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('12', '09:40:00', '10:20:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('13', '09:50:00', '10:10:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('14', '09:50:00', '10:20:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('15', '09:50:00', '10:30:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('16', '10:00:00', '10:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('17', '10:00:00', '10:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('18', '10:00:00', '10:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('19', '10:10:00', '10:30:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('20', '10:10:00', '10:40:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('21', '10:10:00', '10:50:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('22', '10:20:00', '10:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('23', '10:20:00', '10:50:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('24', '10:20:00', '11:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('25', '10:30:00', '10:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('26', '10:30:00', '11:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('27', '10:30:00', '11:10:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('28', '10:40:00', '11:00:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('29', '10:40:00', '11:10:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('30', '10:40:00', '11:20:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('31', '10:50:00', '11:10:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('32', '10:50:00', '11:20:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('33', '10:50:00', '11:30:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('34', '11:00:00', '11:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('35', '11:00:00', '11:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('36', '11:00:00', '11:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('37', '11:10:00', '11:30:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('38', '11:10:00', '11:40:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('39', '11:10:00', '11:50:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('40', '11:20:00', '11:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('41', '11:20:00', '11:50:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('42', '11:20:00', '12:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('43', '11:30:00', '11:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('44', '11:30:00', '12:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('45', '11:30:00', '12:10:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('46', '11:40:00', '12:00:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('47', '11:40:00', '12:10:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('48', '11:40:00', '12:20:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('49', '11:50:00', '12:10:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('50', '11:50:00', '12:20:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('51', '11:50:00', '12:30:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('52', '12:00:00', '12:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('53', '12:00:00', '12:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('54', '12:00:00', '12:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('55', '12:10:00', '12:30:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('56', '12:10:00', '12:40:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('57', '12:10:00', '12:50:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('58', '12:20:00', '12:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('59', '12:20:00', '12:50:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('60', '12:20:00', '13:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('61', '12:30:00', '12:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('62', '12:30:00', '13:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('63', '12:30:00', '13:10:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('64', '12:40:00', '13:00:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('65', '12:40:00', '13:10:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('66', '12:40:00', '13:20:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('67', '12:50:00', '13:10:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('68', '12:50:00', '13:20:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('69', '12:50:00', '13:30:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('70', '13:00:00', '13:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('71', '13:00:00', '13:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('72', '13:00:00', '13:40:00', '40 Minutes', '0');
INSERT INTO `time_increments` VALUES ('73', '13:10:00', '13:30:00', '20 Minutes', '0');
INSERT INTO `time_increments` VALUES ('74', '13:10:00', '13:40:00', '30 Minutes', '0');
INSERT INTO `time_increments` VALUES ('75', '13:10:00', '13:50:00', '40 Minutes', '0');
INSERT INTO `time_increments` VALUES ('76', '13:20:00', '13:40:00', '20 Minutes', '0');
INSERT INTO `time_increments` VALUES ('77', '13:20:00', '13:50:00', '30 Minutes', '0');
INSERT INTO `time_increments` VALUES ('78', '13:20:00', '14:00:00', '40 Minutes', '0');
INSERT INTO `time_increments` VALUES ('79', '13:30:00', '13:50:00', '20 Minutes', '0');
INSERT INTO `time_increments` VALUES ('80', '13:30:00', '14:00:00', '30 Minutes', '0');
INSERT INTO `time_increments` VALUES ('81', '13:30:00', '14:10:00', '40 Minutes', '0');
INSERT INTO `time_increments` VALUES ('82', '13:40:00', '14:00:00', '20 Minutes', '0');
INSERT INTO `time_increments` VALUES ('83', '13:40:00', '14:10:00', '30 Minutes', '0');
INSERT INTO `time_increments` VALUES ('84', '13:40:00', '14:20:00', '40 Minutes', '0');
INSERT INTO `time_increments` VALUES ('85', '13:50:00', '14:10:00', '20 Minutes', '0');
INSERT INTO `time_increments` VALUES ('86', '13:50:00', '14:20:00', '30 Minutes', '0');
INSERT INTO `time_increments` VALUES ('87', '13:50:00', '14:40:00', '40 Minutes', '0');
INSERT INTO `time_increments` VALUES ('88', '14:00:00', '14:20:00', '20 Minutes', '0');
INSERT INTO `time_increments` VALUES ('89', '14:00:00', '14:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('90', '14:00:00', '14:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('91', '14:10:00', '14:30:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('92', '14:10:00', '14:40:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('93', '14:10:00', '14:50:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('94', '14:20:00', '14:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('95', '14:20:00', '14:50:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('96', '14:20:00', '15:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('97', '14:30:00', '14:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('98', '14:30:00', '15:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('99', '14:30:00', '15:10:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('100', '14:40:00', '15:00:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('101', '14:40:00', '15:10:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('102', '14:40:00', '15:20:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('103', '14:50:00', '15:10:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('104', '14:50:00', '15:20:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('105', '14:50:00', '15:30:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('106', '15:00:00', '15:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('107', '15:00:00', '15:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('108', '15:00:00', '15:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('109', '15:10:00', '15:30:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('110', '15:10:00', '15:40:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('111', '15:10:00', '15:50:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('112', '15:20:00', '15:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('113', '15:20:00', '15:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('114', '15:20:00', '16:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('115', '15:30:00', '16:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('116', '15:30:00', '16:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('117', '15:30:00', '16:10:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('118', '15:40:00', '16:00:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('119', '15:40:00', '16:10:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('120', '15:40:00', '16:20:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('121', '15:50:00', '16:10:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('122', '15:50:00', '16:20:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('123', '15:50:00', '16:30:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('124', '16:00:00', '16:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('125', '16:00:00', '16:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('126', '16:00:00', '16:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('127', '16:10:00', '16:30:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('128', '16:10:00', '16:40:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('129', '16:10:00', '16:50:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('130', '16:20:00', '16:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('131', '16:20:00', '16:50:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('132', '16:20:00', '17:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('133', '16:30:00', '16:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('134', '16:30:00', '17:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('135', '16:30:00', '17:10:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('136', '16:40:00', '17:00:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('137', '16:40:00', '17:10:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('138', '16:40:00', '17:20:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('139', '16:50:00', '17:10:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('140', '16:50:00', '17:20:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('141', '16:50:00', '17:30:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('142', '17:00:00', '17:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('143', '17:00:00', '17:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('144', '17:00:00', '17:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('145', '17:10:00', '17:30:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('146', '17:10:00', '17:40:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('147', '17:10:00', '17:50:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('148', '17:20:00', '17:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('149', '17:20:00', '17:50:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('150', '17:20:00', '18:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('151', '17:30:00', '17:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('152', '17:30:00', '18:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('153', '17:30:00', '18:10:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('154', '17:40:00', '18:00:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('155', '17:40:00', '18:10:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('156', '17:40:00', '18:20:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('157', '17:50:00', '18:10:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('158', '17:50:00', '18:20:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('159', '17:50:00', '18:30:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('160', '18:00:00', '18:20:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('161', '18:00:00', '18:30:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('162', '18:00:00', '18:40:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('163', '18:10:00', '18:30:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('164', '18:10:00', '18:40:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('165', '18:10:00', '18:50:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('166', '18:20:00', '18:40:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('167', '18:20:00', '18:50:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('168', '18:20:00', '19:00:00', '40 Minutes', '1');
INSERT INTO `time_increments` VALUES ('169', '18:30:00', '18:50:00', '20 Minutes', '1');
INSERT INTO `time_increments` VALUES ('170', '18:30:00', '19:00:00', '30 Minutes', '1');
INSERT INTO `time_increments` VALUES ('171', '18:40:00', '19:00:00', '20 Minutes', '1');
SET FOREIGN_KEY_CHECKS=1;
