/*
Date: 2021-04-09 11:28:00
Rebuilt for postgres

*/

-- ----------------------------
-- Table structure for locations
-- ----------------------------
CREATE TABLE locations (
  objid serial,
  site_name varchar(255),
  site_address varchar(255),
  site_city varchar(255),
  site_zip varchar(255),
  status int2,
  PRIMARY KEY (objid)
);

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO locations VALUES ('1', 'Almaden', '926 Hampswood Way', 'San Jose', '', 0);
INSERT INTO locations VALUES ('2', 'Blossom Valley', '3984 Agatha Way', 'San Jose', '', 0);
