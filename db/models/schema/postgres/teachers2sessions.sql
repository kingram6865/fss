CREATE TABLE teachers2sessions (
  objid serial,
  created date,
  session_id integer REFERENCES session_schedule (objid),
  instructor_id integer REFERENCES instructors (objid),
  session varchar(80),
  instructor varchar(80),
  availability_start date,
  availability_end date,
  rate decimal(5,2)
);