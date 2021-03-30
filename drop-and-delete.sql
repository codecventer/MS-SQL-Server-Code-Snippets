
USE lead_by_example
GO
DROP table Employee
GO

--Dropping a database
USE MASTER
GO
DROP DATABASE lead_by_example
GO

-- Delete statement
DELETE FROM table_name
WHERE column_name = value

-- Another example
USE University
GO

DELETE FROM campus
WHERE cName = 'Port Elizabeth'
GO