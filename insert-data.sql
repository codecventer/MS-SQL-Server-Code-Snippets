
INSERT INTO campus
VALUES (1, 'Bedfordview', 'Gauteng', '0105952999')
GO
 
INSERT INTO campus
VALUES (2, 'Durbanville', 'Western Cape', '021 674 6567')
GO
 
INSERT INTO campus
VALUES (3, 'Cape Town', 'Western Cape', '021 914 8000')
GO
 
INSERT INTO campus
VALUES (4, 'Midrand', 'Gauteng','011 467 8422')
GO
 
INSERT INTO campus
VALUES (5, 'Potchefstroom', 'North West', '018 297 7760')
GO
            
INSERT INTO campus
VALUES (6, 'Nelspruit', 'Mpumalanga', '013 755 3918')
GO
 
INSERT INTO campus
VALUES (7, 'Port Elizabeth', 'Eastern Cape', '041 374 7978, ')
GO
 
--Specifying columns to insert data on.
INSERT INTO campStaff(empEmail, empName, campusID)
VALUES ('moonman@gmail.com', 'Moonman',2)
GO
 
INSERT INTO campStaff(empEmail, empName, campusID)
VALUES ('zuese@hotmail.com', 'Zuese',3)
GO
 
INSERT INTO campStaff(empEmail, empName, campusID)
VALUES ('alfred@gmail.com', 'Alfred',1)
GO
 
INSERT INTO campStaff(empEmail, empName, campusID)
VALUES ('desire@gmail.com', 'Desire',4)
GO
 
INSERT INTO campStaff(empEmail, empName, campusID)
VALUES ('simon@gmail.com', 'Simon',5)
GO
 
INSERT INTO student(StuID, fName, sName, campusID)
VALUES (100,'Themba', 'Banda',3)
GO
 
INSERT INTO student(StuID, fName, sName, campusID)
VALUES (102,'Chris', 'Lake', 1)
GO
 
INSERT INTO student(StuID, fName, sName, campusID)
VALUES (103,'Deen', 'Fuel', 2)
GO
 
INSERT INTO student(StuID, fName, sName, campusID)
VALUES (104,'Deen', 'Gomez', 2)
GO
 
INSERT INTO student(StuID, fName, sName, campusID)
VALUES (105,'Mark', 'Knight', 1)
GO
 
INSERT INTO student(StuID, fName, sName, campusID)
VALUES (106,'Nelson', 'Ndabeni', 6)
GO
 
INSERT INTO student(StuID, fName, sName, campusID)
VALUES (107,'Sifiso', 'Mjobo', 7)
PRINT 'Data is inserted successfully'
GO