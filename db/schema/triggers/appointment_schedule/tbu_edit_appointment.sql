CREATE OR REPLACE FUNCTION edit_appointment()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL 
AS $edit_appointment$
---
--- When a new appointment is created only the foreign key data is inserted
--- the record is updated with the proper information from the foreign key parent
---

DECLARE 
  v_clientfname VARCHAR(35);
  v_clientlname VARCHAR(35);
  v_instructorfname VARCHAR(35);
  v_instructorlname VARCHAR(35);
  v_starttime VARCHAR(10);
  v_endtime VARCHAR(10);
  v_description VARCHAR(500);
  v_sessionlocation VARCHAR(100);
  v_sessiondates VARCHAR(255);
  v_sessiontype INTEGER;
  v_sessionperiod1start DATE;
  v_sessionperiod1end DATE;
  v_sessionperiod2start DATE;
  v_sessionperiod2end DATE;
  v_numteachers INTEGER;
  v_lessoninfo VARCHAR(500);
BEGIN

  IF ((NEW.time_increment_id <> OLD.time_increment_id) AND (NEW.time_increment_id IS NOT NULL)) THEN
    SELECT start_time, end_time, description INTO v_starttime, v_endtime, v_description FROM time_increments WHERE objid = NEW.time_increment_id;
    NEW.start_time := v_starttime;
    NEW.end_time := v_endtime;
  END IF;

  IF ((NEW.instructor_id <> OLD.instructor_id) AND (NEW.instructor_id IS NOT NULL)) THEN
    SELECT first_name, last_name INTO v_instructorfname, v_instructorlname from instructors WHERE objid = NEW.instructor_id;
    NEW.instructor := CONCAT(TRIM(v_instructorfname), ' ', TRIM(v_instructorlname));
  END IF;

  IF ((NEW.client_id <> OLD.client_id) AND (NEW.client_id IS NOT NULL)) THEN
    SELECT first_name, last_name INTO v_clientfname, v_clientlname from clients WHERE objid = NEW.client_id;
    NEW.client := CONCAT(TRIM(v_clientfname), ' ', TRIM(v_clientlname));
  END IF;

  IF ((NEW.lesson_detail_id <> OLD.lesson_detail_id) AND (NEW.lesson_detail_id IS NOT NULL))  THEN
    SELECT session_location, session_dates, session_type, session_period1_start, session_period1_end, session_period2_start, session_period2_end, teachers INTO v_sessionlocation, v_sessiondates, v_sessiontype, v_sessionperiod1start, v_sessionperiod1end, v_sessionperiod2start, v_sessionperiod2end, v_numteachers FROM lesson_details WHERE objid = NEW.lesson_detail_id;
    v_lessoninfo := CONCAT(TRIM(v_sessiontype::text), ' Day -> ', TRIM(v_sessiondates));
    NEW.lesson_type := v_sessiontype;
    NEW.lesson_info := v_lessoninfo;
  END IF;

  RETURN NEW;
END;
$edit_appointment$

-- CREATE TRIGGER tbu_edit_appointment BEFORE UPDATE ON appointment_schedule FOR EACH ROW EXECUTE PROCEDURE edit_appointment();
