CREATE table session_time_slots (
  objid serial,
  created DATE,
  session_id INTEGER REFERENCES session_schedule(objid),
  session VARCHAR(50),
  time_increment_id INTEGER REFERENCES time_increments(objid),
  time_slot VARCHAR(20)
);