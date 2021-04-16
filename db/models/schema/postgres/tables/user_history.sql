CREATE TABLE user_history (
  objid serial,
  created date,
  admin_user_id integer REFERENCES admin_users(objid),
  action varchar(100)
);