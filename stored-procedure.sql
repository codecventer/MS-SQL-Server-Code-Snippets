USE University
GO

CREATE PROCEDURE spSimple
AS
SELECT *
FROM campStaff
ORDER BY empName

-- This will create a stored procedure that retrieves a simple query,
-- once created, it may be executed using the EXEC keyword:

USE University
GO

EXEC spSimple