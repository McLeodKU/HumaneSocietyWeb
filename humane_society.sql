-- --------------------------------------------------------

--
-- Table structure for table 'ANIMAL'
--

DROP TABLE IF EXISTS ANIMAL;
CREATE TABLE IF NOT EXISTS ANIMAL (
  MICROCHIPNUM varchar(5) NOT NULL,
  NAME varchar(20) DEFAULT NULL,
  MEDICATION varchar(20) DEFAULT NULL,
  DOB datetime DEFAULT NULL,
  WEIGHT int(3) DEFAULT NULL,
  ORIGIN varchar(20) DEFAULT NULL,
  GENDER varchar(6) DEFAULT NULL,
  LOCATIONNUMBER varchar(5) DEFAULT NULL,
  PRIMARY KEY (MICROCHIPNUM)
);

--
-- Dumping data for table 'ANIMAL'
--

INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('11111', 'Layla', 'None Needed', 'Unknown', 8, 'Stray', 'Female', '11520');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('22222', 'Buddy', 'Dieted Food', '2015-09-20 00:00:00', 12, 'Shelter', 'Male', '11520');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('33333', 'Max', 'insulin', '2018-03-10 00:00:00', 15, 'Rescue', 'Male', '11520');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('44444', 'Daisy', 'Deworming', 'Unknown', 7, 'Stray', 'Female', '11530');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('55555', 'Rocky', 'None Needed', '2017-12-15 00:00:00', 10, 'Home', 'Male', '11520');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('66666', 'Lucy', 'None Needed', '2016-08-25 00:00:00', 9, 'Shelter', 'Female', '11520');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('77777', 'Charlie', 'None Needed', 'Unknown', 11, 'Rescue', 'Male', '11530');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('88888', 'Molly', 'None Needed', 'Unknown', 6, 'Stray', 'Female', '11530');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('99999', 'Bailey', 'None Needed', '2020-11-02 00:00:00', 72, 'Home', 'Male', '11530');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('10101', 'Bella', 'Deworming', '2016-05-20 00:00:00', 52, 'Rescue', 'Female', '11530');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('20202', 'Maximus', 'None Needed', 'Unknown', 61, 'Stray', 'Male', '11530');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('30303', 'Sophie', 'None Needed', '2017-03-17 00:00:00', 40, 'Shelter', 'Female', '11530');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('40404', 'Jack', 'Dieted Food', '2018-09-30 00:00:00', 58, 'Home', 'Male', '11520');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('50505', 'Luna', 'None Needed', 'Unknown', 20, 'Stray', 'Female', '11520');
INSERT INTO ANIMAL (MICROCHIPNUM, NAME, MEDICATION, DOB, WEIGHT, ORIGIN, GENDER, LOCATIONNUMBER) VALUES('60606', 'Cooper', 'None Needed', '2014-11-25 00:00:00', 74, 'Home', 'Male', '11520');
-- --------------------------------------------------------

--
-- Table structure for table 'CAT'
--
DROP TABLE IF EXISTS CAT;
CREATE TABLE IF NOT EXISTS CAT (
  MICROCHIPNUM varchar(5) NOT NULL,
  BREED varchar(50) DEFAULT NULL,
  PRIMARY KEY (MICROCHIPNUM)
);

--
-- Dumping data for table 'CAT'
--

INSERT INTO CAT (MICROCHIPNUM, BREED) VALUES('11111', 'Siamese');
INSERT INTO CAT (MICROCHIPNUM, BREED) VALUES('22222', 'Gray Tabby');
INSERT INTO CAT (MICROCHIPNUM, BREED) VALUES('33333', 'Maine Coon');
INSERT INTO CAT (MICROCHIPNUM, BREED) VALUES('44444', 'Persian');
INSERT INTO CAT (MICROCHIPNUM, BREED) VALUES('55555', 'Orange Tabby');
INSERT INTO CAT (MICROCHIPNUM, BREED) VALUES('66666', 'Shorthair Mix');
INSERT INTO CAT (MICROCHIPNUM, BREED) VALUES('77777', 'Maine Coon');
INSERT INTO CAT (MICROCHIPNUM, BREED) VALUES('88888', 'Siamese');
-- --------------------------------------------------------

--
-- Table structure for table 'DOG'
--
DROP TABLE IF EXISTS DOG;
CREATE TABLE IF NOT EXISTS DOG (
  MICROCHIPNUM varchar(5) NOT NULL,
  BREED varchar(50) DEFAULT NULL,
  PRIMARY KEY (MICROCHIPNUM)
);

--
-- Dumping data for table 'DOG'
--

INSERT INTO DOG (MICROCHIPNUM, BREED) VALUES('99999', 'Labrador');
INSERT INTO DOG (MICROCHIPNUM, BREED) VALUES('10101', 'German Shepherd');
INSERT INTO DOG (MICROCHIPNUM, BREED) VALUES('20202', 'Golden Retriever');
INSERT INTO DOG (MICROCHIPNUM, BREED) VALUES('30303', 'Poodle');
INSERT INTO DOG (MICROCHIPNUM, BREED) VALUES('40404', 'Bulldog');
INSERT INTO DOG (MICROCHIPNUM, BREED) VALUES('50505', 'Beagle');
INSERT INTO DOG (MICROCHIPNUM, BREED) VALUES('60606', 'Boxer');
-- --------------------------------------------------------

--
-- Table structure for table 'HUMANESOCIETYLOCATION'
--
DROP TABLE IF EXISTS HUMANESOCIETYLOCATION;
CREATE TABLE IF NOT EXISTS HUMANESOCIETYLOCATION (
  LOCATIONNUMBER varchar(5) NOT NULL,
  ADDRESS varchar(50) DEFAULT NULL,
  PHONE varchar(8) DEFAULT NULL,  
  CAPACITY int(2) DEFAULT NULL,
  KILLSHELTER varchar(3) NULL, 
  PRIMARY KEY (LOCATIONNUMBER)
);

--
-- Dumping data for table 'HUMANESOCIETYLOCATION'
--

INSERT INTO HUMANESOCIETYLOCATION (LOCATIONNUMBER, ADDRESS, PHONE, CAPACITY, KILLSHELTER) VALUES ('11520', '123 Main Street', '12345678', 50, 'No');
INSERT INTO HUMANESOCIETYLOCATION (LOCATIONNUMBER, ADDRESS, PHONE, CAPACITY, KILLSHELTER) VALUES ('11530', '456 Elm Street', '87654321', 70, 'Yes');
-- --------------------------------------------------------

--
-- Table structure for table 'EMPLOYEE'
--
DROP TABLE IF EXISTS EMPLOYEE;
CREATE TABLE IF NOT EXISTS EMPLOYEE (
  EMPLOYEE_ID varchar(5) NOT NULL,
  SSN varchar(8) DEFAULT NULL,  
  NAME varchar(20) DEFAULT NULL,
  DOB datetime DEFAULT NULL,
  OCCUPATION varchar(50) DEFAULT NULL,
  LOCATIONNUMBER varchar(5) DEFAULT NULL, 
  PRIMARY KEY (EMPLOYEE_ID)
);

--
-- Dumping data for table 'EMPLOYEE'
--
INSERT INTO EMPLOYEE (EMPLOYEE_ID, SSN, NAME, DOB, OCCUPATION, LOCATIONNUMBER) VALUES ('10001', '12345678', 'John Smith', '1980-05-15 00:00:00', 'Vet', '11520');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, SSN, NAME, DOB, OCCUPATION, LOCATIONNUMBER) VALUES ('10003', '34567890', 'Michael Johnson', '1976-11-10 00:00:00','Vet Tech', '11520');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, SSN, NAME, DOB, OCCUPATION, LOCATIONNUMBER) VALUES ('10004', '45678901', 'Emily Williams', '1990-03-25 00:00:00','Nutritionist', '11520');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, SSN, NAME, DOB, OCCUPATION, LOCATIONNUMBER) VALUES ('10005', '56789012', 'David Brown', '1988-07-08 00:00:00', 'Volunteer', '11530');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, SSN, NAME, DOB, OCCUPATION, LOCATIONNUMBER) VALUES ('10006', '67890123', 'Jennifer Taylor', '1983-12-15 00:00:00', 'Emergency Vet', '11530');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, SSN, NAME, DOB, OCCUPATION, LOCATIONNUMBER) VALUES ('10007', '78901234', 'Matthew Martinez', '1979-02-28 00:00:00', 'Vet', '11530');
-- --------------------------------------------------------

