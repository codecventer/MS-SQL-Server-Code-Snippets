
SELECT column_list
FROM table_name 
WHERE column_name = value
GO
-- Above code could be modified to select all records from a table
-- where the value specified is equal to the column specified.

--

USE University
GO
SELECT *
FROM campStaff
WHERE campusID <> 1
GO
-- This retrieves all the records under campStaff
-- that are not working at the Bedfordview campus (campusID of 1)