CREATE OR REPLACE FUNCTION new_session_detail()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL 
AS $new_session_detail$

DECLARE
  v_sessionname VARCHAR(20);
  v_sessionstart DATE;
  v_sessionend DATE;
  v_sessiontype tinyint(1);
  v_sessiondata VARCHAR(80);
  v_sessionrange VARCHAR(60);
  v_location VARCHAR(80);

BEGIN
  SELECT session_location INTO v_location FROM locations WHERE objid = NEW.session_location_id;
  SELECT session_name, start_date, end_date, session_type INTO v_sessionname, v_sessionstart, v_sessionend, v_sessiontype FROM session_schedule WHERE objid = NEW.session_id;
  IF (v_sessiontype = 8) THEN
    _interval := (v_sessiontype/2) - 1;
    _interval_two := (v_sessiontype/2) - 1;
    NEW.session_period1_start := v_sessionstart;
    NEW.session_period1_end := date_add(v_sessionstart, INTERVAL _interval DAY);
    _range1 := v_sessionstart + (_interval * INTERVAL '1 day');  -- Break End Date
    NEW.session_period2_start := _range1 + INTERVAL '1 day'); -- 1 day after break end
    NEW.session_period2_end := _range1 + 4 * INTERVAL '1 day' ); -- 2nd period ends 4 days after break ends
    _session1_range := concat("Period 1: ", date_format(v_sessionstart, '%a, %M %d %Y'), " to ", date_format(v_sessionstart + _interval * INTERVAL '1 day'), '%a, %M %d %Y'));
    _session2_range := concat("Period 2: ", date_format(_range1 + INTERVAL '1 day'), '%a, %M %d %Y'), " to ", date_format(_range1 + 4 * INTERVAL '1 day'), '%a, %M %d %Y'));
    NEW.session_dates := CONCAT(_session1_range, " -- BREAK -- ", _session2_range);
  ELSE 
    _interval := v_sessiontype - 1;
    NEW.session_period1_start := v_sessionstart;
    NEW.session_period1_end := v_sessionstart +  _interval * INTERVAL '1 day');
  END IF;

  NEW.session_year := DATE_FORMAT(v_sessionstart, '%Y');
  NEW.session_name := v_sessionname;
  NEW.session_type := v_sessiontype;

END;

$new_session_detail$

-- CREATE TRIGGER tbi_new_session_detail BEFORE INSERT ON session_details FOR EACH ROW EXECUTE PROCEDURE new_session_detail();