
UPDATE table_name  
SET column_name = value 
WHERE column_name = value


UPDATE table_name  
SET column_name = value 
WHERE column_name = value AND column_name = value


USE University
GO
UPDATE student
SET fName = 'Dean'
WHERE fName = 'Deen' AND sName = 'Fuel'
GO  