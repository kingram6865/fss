/*
Date: 2021-03-26 12:39:35
Reformatted for postgres
*/

-- ----------------------------
-- Table structure for appointment_schedule
-- ----------------------------
CREATE TABLE appointment_schedule (
  objid serial,
  created date,
  session_detail_id integer REFERENCES session_details (objid),
  lesson_info varchar(500),
  time_increment_id integer REFERENCES time_increments (objid),
  start_time varchar(10),
  end_time varchar(10),
  lesson_type varchar(20),
  instructor_id integer REFERENCES instructors (objid),
  instructor varchar(80),
  client_id integer REFERENCES clients (objid),
  client varchar(80),
  confirmed int2,
  last_edit date,
  PRIMARY KEY (objid)
);

-- ----------------------------
-- Records of appointment_schedule
-- ----------------------------
/*
INSERT INTO appointment_schedule VALUES ('1', '2021-03-25 17:11:45', '1', '8 Day -> Period 1: Mon, August 02 2010 to Thu, August 05 2010 -- BREAK -- Period 2: Mon, August 09 2010 to Thu, August 12 2010', '16', '10:00:00', '10:20:00', '8', '5', 'Elinor Effertz', '7', 'Tamara Anderson', null, null);
INSERT INTO appointment_schedule VALUES ('2', '2021-03-25 22:55:14', '1', '8 Day -> Period 1: Mon, August 02 2010 to Thu, August 05 2010 -- BREAK -- Period 2: Mon, August 09 2010 to Thu, August 12 2010', '16', '10:00:00', '10:20:00', '8', '8', 'Beryl Reynolds', '22', 'Melissa Blue', null, null);
INSERT INTO appointment_schedule VALUES ('3', '2021-03-25 22:56:35', '1', '8 Day -> Period 1: Mon, August 02 2010 to Thu, August 05 2010 -- BREAK -- Period 2: Mon, August 09 2010 to Thu, August 12 2010', '22', '10:20:00', '10:40:00', '8', '5', 'Elinor Effertz', '30', 'Byron Burkhalter', null, null);
INSERT INTO appointment_schedule VALUES ('4', '2021-03-25 22:56:45', '1', '8 Day -> Period 1: Mon, August 02 2010 to Thu, August 05 2010 -- BREAK -- Period 2: Mon, August 09 2010 to Thu, August 12 2010', '28', '10:40:00', '11:00:00', '8', '5', 'Elinor Effertz', '31', 'Michelle Burns', null, null);
INSERT INTO appointment_schedule VALUES ('5', '2021-03-25 23:17:29', '1', '8 Day -> Period 1: Mon, August 02 2010 to Thu, August 05 2010 -- BREAK -- Period 2: Mon, August 09 2010 to Thu, August 12 2010', '42', '11:20:00', '12:00:00', '8', '3', 'Stanley Stracke', '40', 'Pi-o Chang', null, null);
*/

/*
DROP TRIGGER IF EXISTS tbi_new_appointment;
DELIMITER ;;
CREATE TRIGGER tbi_new_appointment BEFORE INSERT ON appointment_schedule FOR EACH ROW BEGIN
 DECLARE v_clientfname VARCHAR(35);
 DECLARE v_clientlname VARCHAR(35);
 DECLARE v_instructorfname VARCHAR(35);
 DECLARE v_instructorlname VARCHAR(35);
 DECLARE v_starttime VARCHAR(10);
 DECLARE v_endtime VARCHAR(10);
 DECLARE v_description VARCHAR(500);
 DECLARE v_sessionlocation VARCHAR(100);
 DECLARE v_sessiondates VARCHAR(255);
 DECLARE v_sessiontype INTEGER;
 DECLARE v_sessionperiod1start DATE;
 DECLARE v_sessionperiod1end DATE;
 DECLARE v_sessionperiod2start DATE;
 DECLARE v_sessionperiod2end DATE;
 DECLARE v_numteachers INTEGER;
 DECLARE v_lessoninfo VARCHAR(500);

 SELECT first_name, last_name INTO v_clientfname, v_clientlname from clients WHERE objid = NEW.instructor_id ;
 SELECT first_name, last_name INTO v_instructorfname, v_instructorlname from instructors WHERE objid = NEW.instructor_id;
 SELECT start_time, end_time, description INTO v_starttime, v_endtime, v_description FROM time_increments WHERE objid = NEW.time_increment_id;
 SELECT session_location, session_dates, session_type, session_period1_start, session_period1_end, session_period2_start, session_period2_end, teachers INTO v_sessionlocation, v_sessiondates, v_sessiontype, v_sessionperiod1start, v_sessionperiod1end, v_sessionperiod2start, v_sessionperiod2end, v_numteachers FROM lesson_details WHERE objid = NEW.lesson_detail_id;

 SET v_lessoninfo = CONCAT(TRIM(v_sessiontype), " Day -> ", TRIM(v_sessiondates));
 SET NEW.start_time = v_starttime;
 SET NEW.end_time = v_endtime;
 SET NEW.lesson_type = v_sessiontype;
 SET NEW.instructor = CONCAT(TRIM(v_instructorfname), " ", TRIM(v_instructorlname));
 SET NEW.client = CONCAT(TRIM(v_clientfname), " ", TRIM(v_clientlname));
 SET NEW.lesson_info = v_lessoninfo;
 
 IF (NEW.created IS NULL) THEN
   SET NEW.created = NOW();
 END IF;

END
;;
DELIMITER ;
*/

/*
DROP TRIGGER IF EXISTS tbi_edit_appointment;
DELIMITER ;;
CREATE TRIGGER tbi_edit_appointment BEFORE UPDATE ON appointment_schedule FOR EACH ROW BEGIN
 DECLARE v_clientfname VARCHAR(35);
 DECLARE v_clientlname VARCHAR(35);
 DECLARE v_instructorfname VARCHAR(35);
 DECLARE v_instructorlname VARCHAR(35);
 DECLARE v_starttime VARCHAR(10);
 DECLARE v_endtime VARCHAR(10);
 DECLARE v_description VARCHAR(500);
 DECLARE v_sessionlocation VARCHAR(100);
 DECLARE v_sessiondates VARCHAR(255);
 DECLARE v_sessiontype INTEGER;
 DECLARE v_sessionperiod1start DATE;
 DECLARE v_sessionperiod1end DATE;
 DECLARE v_sessionperiod2start DATE;
 DECLARE v_sessionperiod2end DATE;
 DECLARE v_numteachers INTEGER;
 DECLARE v_lessoninfo VARCHAR(500);

IF ((NEW.time_increment_id <> OLD.time_increment_id) && (NEW.time_increment_id IS NOT NULL)) THEN
 SELECT start_time, end_time, description INTO v_starttime, v_endtime, v_description FROM time_increments WHERE objid = NEW.time_increment_id;
 SET NEW.start_time = v_starttime;
 SET NEW.end_time = v_endtime;
 
END IF;

IF ((NEW.instructor_id <> OLD.instructor_id) && (NEW.instructor_id IS NOT NULL)) THEN
 SELECT first_name, last_name INTO v_instructorfname, v_instructorlname from instructors WHERE objid = NEW.instructor_id;
 SET NEW.instructor = CONCAT(TRIM(v_instructorfname), " ", TRIM(v_instructorlname));
END IF;

IF ((NEW.client_id <> OLD.client_id) && (NEW.client_id IS NOT NULL)) THEN
 SELECT first_name, last_name INTO v_clientfname, v_clientlname from clients WHERE objid = NEW.client_id;
 SET NEW.client = CONCAT(TRIM(v_clientfname), " ", TRIM(v_clientlname));
END IF;

IF ((NEW.lesson_detail_id <>OLD.lesson_detail_id) && (NEW.lesson_detail_id IS NOT NULL))  THEN
 SELECT session_location, session_dates, session_type, session_period1_start, session_period1_end, session_period2_start, session_period2_end, teachers INTO v_sessionlocation, v_sessiondates, v_sessiontype, v_sessionperiod1start, v_sessionperiod1end, v_sessionperiod2start, v_sessionperiod2end, v_numteachers FROM lesson_details WHERE objid = NEW.lesson_detail_id;
 SET v_lessoninfo = CONCAT(TRIM(v_sessiontype), " Day -> ", TRIM(v_sessiondates));
 SET NEW.lesson_type = v_sessiontype;
 SET NEW.lesson_info = v_lessoninfo;
END IF;

END
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
*/