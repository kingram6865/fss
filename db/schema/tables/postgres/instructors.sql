/*
Date: 2021-04-09 11:40:59
Reformatted for postgres
*/

-- ----------------------------
-- Table structure for instructors
-- ----------------------------
DROP TABLE IF EXISTS instructors;
CREATE TABLE instructors (
  objid serial,
  entry_date date,
  first_name varchar(30),
  middle_name varchar(30),
  last_name varchar(30),
  dob date,
  PRIMARY KEY (objid)
);

-- ----------------------------
-- Records of instructors
-- ----------------------------
INSERT INTO instructors VALUES ('1', null, 'Ettie', 'c', 'Kuhlman', null);
INSERT INTO instructors VALUES ('2', null, 'Rolando', 'b', 'Roberts', null);
INSERT INTO instructors VALUES ('3', null, 'Stanley', 'c', 'Stracke', null);
INSERT INTO instructors VALUES ('4', null, 'Ariane', 'b', 'Hansen', null);
INSERT INTO instructors VALUES ('5', null, 'Elinor', 'c', 'Effertz', null);
INSERT INTO instructors VALUES ('6', null, 'Felipa', 'c', 'Walker', null);
INSERT INTO instructors VALUES ('7', null, 'Nettie', 'c', 'Cassin', null);
INSERT INTO instructors VALUES ('8', null, 'Beryl', 'a', 'Reynolds', null);
INSERT INTO instructors VALUES ('9', null, 'Candice', 'b', 'Durgan', null);
INSERT INTO instructors VALUES ('10', null, 'Watson', 'c', 'Lynch', null);
INSERT INTO instructors VALUES ('11', null, 'Myah', 'b', 'Waters', null);
INSERT INTO instructors VALUES ('12', null, 'Johathan', 'a', 'Ritchie', null);
INSERT INTO instructors VALUES ('13', null, 'Aditya', 'a', 'Grimes', null);
INSERT INTO instructors VALUES ('14', null, 'Lonzo', 'a', 'Gerlach', null);
INSERT INTO instructors VALUES ('15', null, 'Jonathan', 'a', 'Jacobi', null);
INSERT INTO instructors VALUES ('16', null, 'Brenna', 'a', 'Beatty', null);
INSERT INTO instructors VALUES ('17', null, 'Jules', 'c', 'Emmerich', null);
INSERT INTO instructors VALUES ('18', null, 'Al', 'b', 'Stoltenberg', null);
INSERT INTO instructors VALUES ('19', null, 'Leta', 'a', 'Reynolds', null);
INSERT INTO instructors VALUES ('20', null, 'Adalberto', 'c', 'Bernhard', null);
INSERT INTO instructors VALUES ('21', null, 'Cyril', 'a', 'Oberbrunner', null);
INSERT INTO instructors VALUES ('22', null, 'Vance', 'b', 'Crist', null);

/*
DROP TRIGGER IF EXISTS tbi_new_instructors;
DELIMITER ;;
CREATE TRIGGER tbi_new_instructors BEFORE INSERT ON instructors FOR EACH ROW BEGIN

IF (NEW.entry_date) THEN
  SET NEW.entry_date = NOW();
END IF;

END
;;
*/