/*
Navicat MySQL Data Transfer
Date: 2021-04-09 11:26:35
*/


-- ----------------------------
-- Table structure for session_schedule
-- ----------------------------
CREATE TABLE session_schedule (
  objid serial,
  session_name varchar(25),
  start_date date,
  end_date date,
  session_type int2,
  PRIMARY KEY (objid)
);

-- ----------------------------
-- Records of session_schedule
-- ----------------------------
INSERT INTO session_schedule VALUES ('1', 'Session 1', '2010-06-07', '2010-06-11', '4');
INSERT INTO session_schedule VALUES ('2', 'Session 2', '2010-06-14', '2010-06-25', '8');
INSERT INTO session_schedule VALUES ('3', 'Session 3', '2010-06-28', '2010-07-01', '4');
INSERT INTO session_schedule VALUES ('4', 'Session 4', '2010-07-06', '2010-07-15', '8');
INSERT INTO session_schedule VALUES ('5', 'Session 5', '2010-07-19', '2010-07-23', '5');
INSERT INTO session_schedule VALUES ('6', 'Session 6', '2010-07-26', '2010-07-30', '5');
INSERT INTO session_schedule VALUES ('7', 'Session 7', '2010-08-02', '2010-08-12', '8');
