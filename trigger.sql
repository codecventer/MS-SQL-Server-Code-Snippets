
USE University
GO
 
CREATE TRIGGER tr_test
ON campus
INSTEAD OF INSERT
AS
PRINT 'Inserting has been disabled on table CAMPUS'
GO
 
--testing that the trigger will fire
INSERT INTO campus
VALUES (3,'Bloubosrand','JHB')
GO