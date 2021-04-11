CREATE OR REPLACE FUNCTION new_teacher_session()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL 
AS $new_teacher_session$

DECLARE
  v_fname VARCHAR(35);
  v_lname VARCHAR(35);
  v_sessionstart VARCHAR(10);
  v_sessionend VARCHAR(10);
  v_sessionname VARCHAR(10);
  v_sessiontype VARCHAR(1);
  v_instructor VARCHAR(80);
  v_session VARCHAR(50)

BEGIN
  SELECT first_name, last_name INTO v_fname, v_lname FROM instructors WHERE objid = NEW.instructor_id;
  SELECT session_name, start_date, end_date, session_type INTO v_sessionname, v_sessionstart, v_sessionend, v_sessiontype FROM session_schedule WHERE objid = NEW.session_id; 

  v_instructor := CONCAT(v_fname, " ", v_lname);
  v_session := CONCAT(v_sessionname," ", v_sessionstart, " - ", v_sessionend, ", " v_sessiontype, " Day Session");

  NEW.session := v_session;
  NEW.teacher := v_instructor;

  IF (NEW.created IS NULL) THEN
    NEW.created = NOW();
  END IF;

  RETURN NEW;
END;
$new_teacher_session$

--CREATE TRIGGER tbi_new_teacher4session BEFORE INSERT ON teachers2sessions FOR EACH ROW EXECUTE PROCEDURE new_teacher_session();