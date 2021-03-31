/*
Navicat MySQL Data Transfer

Source Server         : docker_image
Source Server Version : 50562
Source Host           : 192.168.1.19:3306
Source Database       : fss

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-03-26 12:39:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lesson_details
-- ----------------------------
DROP TABLE IF EXISTS `lesson_details`;
CREATE TABLE `lesson_details` (
  `objid` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_id` bigint(20) DEFAULT NULL,
  `session_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_year` int(11) DEFAULT NULL,
  `session_location_id` bigint(20) DEFAULT NULL,
  `session_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_dates` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_type` tinyint(1) DEFAULT NULL,
  `session_period1_start` datetime DEFAULT NULL,
  `session_period1_end` datetime DEFAULT NULL,
  `session_period2_start` datetime DEFAULT NULL,
  `session_period2_end` datetime DEFAULT NULL,
  `teachers` int(11) DEFAULT NULL COMMENT 'Number of teachers for session',
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `objid` (`objid`),
  KEY `fk_sessiontype4session` (`session_type`),
  KEY `fk_session4detail` (`session_id`),
  KEY `fk_location2lesson` (`session_location_id`),
  CONSTRAINT `fk_location2lesson` FOREIGN KEY (`session_location_id`) REFERENCES `locations` (`objid`),
  CONSTRAINT `fk_session4detail` FOREIGN KEY (`session_id`) REFERENCES `session_schedule` (`objid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lesson_details
-- ----------------------------
INSERT INTO `lesson_details` VALUES ('1', '7', 'Session 7', '2010', '2', 'Elks Lodge', 'Period 1: Mon, August 02 2010 to Thu, August 05 2010 -- BREAK -- Period 2: Mon, August 09 2010 to Thu, August 12 2010', '8', '2010-08-02 00:00:00', '2010-08-05 00:00:00', '2010-08-09 00:00:00', '2010-08-12 00:00:00', null, null);
INSERT INTO `lesson_details` VALUES ('2', '6', 'Session 6', '2010', '1', 'Almaden', 'Mon, July 26 2010 to Fri, July 30 2010', '5', '2010-07-26 00:00:00', '2010-07-30 00:00:00', null, null, null, null);
INSERT INTO `lesson_details` VALUES ('3', '5', 'Session 5', '2010', '1', 'Almaden', 'Mon, July 19 2010 to Fri, July 23 2010', '5', '2010-07-19 00:00:00', '2010-07-23 00:00:00', null, null, null, null);
INSERT INTO `lesson_details` VALUES ('4', '4', 'Session 4', '2010', '2', 'Elks Lodge', 'Period 1: Tue, July 06 2010 to Fri, July 09 2010 -- BREAK -- Period 2: Tue, July 13 2010 to Fri, July 16 2010', '8', '2010-07-06 00:00:00', '2010-07-09 00:00:00', '2010-07-13 00:00:00', '2010-07-16 00:00:00', null, null);
INSERT INTO `lesson_details` VALUES ('5', '3', 'Session 3', '2010', '2', 'Elks Lodge', 'Mon, June 28 2010 to Thu, July 01 2010', '4', '2010-06-28 00:00:00', '2010-07-01 00:00:00', null, null, null, null);
INSERT INTO `lesson_details` VALUES ('6', '2', 'Session 2', '2010', '1', 'Almaden', 'Period 1: Mon, June 14 2010 to Thu, June 17 2010 -- BREAK -- Period 2: Mon, June 21 2010 to Thu, June 24 2010', '8', '2010-06-14 00:00:00', '2010-06-17 00:00:00', '2010-06-21 00:00:00', '2010-06-24 00:00:00', null, null);
INSERT INTO `lesson_details` VALUES ('7', '1', 'Session 1', '2010', '1', 'Almaden', 'Mon, June 07 2010 to Thu, June 10 2010', '4', '2010-06-07 00:00:00', '2010-06-10 00:00:00', null, null, null, null);
INSERT INTO `lesson_details` VALUES ('8', '7', 'Session 7', '2010', '2', 'Elks Lodge', 'Period 1: Mon, August 02 2010 to Thu, August 05 2010 -- BREAK -- Period 2: Mon, August 09 2010 to Thu, August 12 2010', '8', '2010-08-02 00:00:00', '2010-08-05 00:00:00', '2010-08-09 00:00:00', '2010-08-12 00:00:00', null, null);
INSERT INTO `lesson_details` VALUES ('9', '6', 'Session 6', '2010', '2', 'Elks Lodge', 'Mon, July 26 2010 to Fri, July 30 2010', '5', '2010-07-26 00:00:00', '2010-07-30 00:00:00', null, null, null, null);
INSERT INTO `lesson_details` VALUES ('10', '5', 'Session 5', '2010', '1', 'Almaden', 'Mon, July 19 2010 to Fri, July 23 2010', '5', '2010-07-19 00:00:00', '2010-07-23 00:00:00', null, null, null, null);
DROP TRIGGER IF EXISTS `tbi_new_session_detail`;
DELIMITER ;;
CREATE TRIGGER `tbi_new_session_detail` BEFORE INSERT ON `lesson_details` FOR EACH ROW BEGIN
  DECLARE v_sessionname VARCHAR(20);
  DECLARE v_sessionstart DATE;
  DECLARE v_sessionend DATE;
  DECLARE v_sessiontype tinyint(1);
  DECLARE v_sessiondata VARCHAR(80);
  DECLARE v_sessionrange VARCHAR(60);
  DECLARE v_location VARCHAR(80);

  SELECT session_location INTO v_location FROM locations WHERE objid = NEW.session_location_id;
  SELECT session_name, start_date, end_date, session_type INTO v_sessionname, v_sessionstart, v_sessionend, v_sessiontype FROM session_schedule WHERE objid = NEW.session_id;
  IF (v_sessiontype = 8) THEN
    SET @interval = (v_sessiontype/2) - 1;
    SET @interval_two = (v_sessiontype/2) - 1;
    SET NEW.session_period1_start = v_sessionstart;
    SET NEW.session_period1_end = date_add(v_sessionstart, INTERVAL @interval DAY);
    SET @range1 = date_add(v_sessionstart, INTERVAL @interval+3 DAY);
    SET NEW.session_period2_start = date_add(@range1, INTERVAL 1 DAY);
    SET NEW.session_period2_end = date_add(@range1, INTERVAL 4 DAY);
    SET @session1_range = concat("Period 1: ", date_format(v_sessionstart, '%a, %M %d %Y'), " to ", date_format(date_add(v_sessionstart, INTERVAL @interval DAY), '%a, %M %d %Y'));
    SET @session2_range = concat("Period 2: ", date_format(date_add(@range1, INTERVAL 1 DAY), '%a, %M %d %Y'), " to ", date_format(date_add(@range1, INTERVAL 4 DAY), '%a, %M %d %Y'));
    SET NEW.session_dates = CONCAT(@session1_range, " -- BREAK -- ", @session2_range);
  ELSE 
    SET @interval = v_sessiontype - 1;
    SET NEW.session_period1_start = v_sessionstart;
    SET NEW.session_period1_end = date_add(v_sessionstart, INTERVAL @interval DAY);
  END IF;

  SET NEW.session_year = DATE_FORMAT(v_sessionstart, '%Y'), NEW.session_name = v_sessionname, NEW.session_type = v_sessiontype;

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tbu_edit_session_detail`;
DELIMITER ;;
CREATE TRIGGER `tbu_edit_session_detail` BEFORE UPDATE ON `lesson_details` FOR EACH ROW BEGIN
  /* DECLARE v_sessiontype VARCHAR(15); */
/*
SELECT session_type_name into v_sessiontype from session_types WHERE objid = NEW.session_type_id;
IF (((OLD.session_type_id IS NULL) || (OLD.session_type_id ="")) || (OLD.session_type_id != NEW.session_type_id)) THEN
  set NEW.session_type = v_sessiontype;
END IF;
*/

  DECLARE v_sessionname VARCHAR(20);
  DECLARE v_sessionstart DATE;
  DECLARE v_sessionend DATE;
  DECLARE v_sessiontype tinyint(1);
  DECLARE v_sessiondata VARCHAR(80);
  DECLARE v_sessionrange VARCHAR(60);
  DECLARE v_sitename VARCHAR(20);

IF ((OLD.session_location_id IS NULL) || ((NEW.session_location_id <> OLD.session_location_id) && (NEW.session_location_id IS NOT NULL))) THEN
  SELECT site_name INTO v_sitename FROM locations WHERE objid = NEW.session_location_id;
  SET NEW.session_location = v_sitename;
END IF;

IF (NEW.session_id <> OLD.session_id) && (NEW.session_id IS NOT NULL) THEN
  SELECT session_name, start_date, end_date, session_type INTO v_sessionname, v_sessionstart, v_sessionend, v_sessiontype FROM session_schedule WHERE objid = NEW.session_id;
  IF (v_sessiontype = 8) THEN
    SET @interval = (v_sessiontype/2) - 1;
    SET @interval_two = (v_sessiontype/2) - 1;
    SET NEW.session_period1_start = v_sessionstart;
    SET NEW.session_period1_end = date_add(v_sessionstart, INTERVAL @interval DAY);
    SET @range1 = date_add(v_sessionstart, INTERVAL @interval+3 DAY);
    SET NEW.session_period2_start = date_add(@range1, INTERVAL 1 DAY);
    SET NEW.session_period2_end = date_add(@range1, INTERVAL 4 DAY);
    SET @session1_range = concat("Period 1: ", date_format(v_sessionstart, '%a, %M %d %Y'), " to ", date_format(date_add(v_sessionstart, INTERVAL @interval DAY), '%a, %M %d %Y'));
    SET @session2_range = concat("Period 2: ", date_format(date_add(@range1, INTERVAL 1 DAY), '%a, %M %d %Y'), " to ", date_format(date_add(@range1, INTERVAL 4 DAY), '%a, %M %d %Y'));
    SET NEW.session_dates = CONCAT(@session1_range, " -- BREAK -- ", @session2_range);
  ELSE 
    SET @interval = v_sessiontype - 1;
    SET NEW.session_period1_start = v_sessionstart;
    SET NEW.session_period1_end = date_add(v_sessionstart, INTERVAL @interval DAY);
    SET NEW.session_dates = concat(date_format(v_sessionstart, '%a, %M %d %Y'), " to ", date_format(date_add(v_sessionstart, INTERVAL @interval DAY), '%a, %M %d %Y'));
    SET NEW.session_period2_start = NULL;
    SET NEW.session_period2_end = NULL;
  END IF;

  SET NEW.session_year = DATE_FORMAT(v_sessionstart, '%Y'), NEW.session_name = v_sessionname, NEW.session_type = v_sessiontype;

END IF;
END
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
