CREATE TABLE admin_users (
  objid serial,
  created date,
  username varchar(16),
  email varchar(255)
  first_name varchar(35),
  last_name varchar(35),
  passphrase varchar(15),
  notes varchar(500),
  last_edited date
);