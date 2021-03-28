/*
Navicat MySQL Data Transfer

Source Server         : docker_image
Source Server Version : 50562
Source Host           : 192.168.1.19:3306
Source Database       : fss

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-03-26 12:38:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `objid` bigint(20) DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `objid` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES ('1', 'Almaden', '', 'Almaden', '');
INSERT INTO `locations` VALUES ('2', 'Elks Lodge', '', 'Willow Glen', '');
SET FOREIGN_KEY_CHECKS=1;
