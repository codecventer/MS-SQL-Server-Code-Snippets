USE lead_by_example
GO
 
--Create a temp copy of table
SELECT *
--the empNum column could have been selected by itself
INTO #tempEmp
FROM employee
GO
 
--Add a column called Printed
ALTER TABLE #tempEmp
ADD
Printed SMALLINT
GO
 
--Set all the values in that column equal to 0
UPDATE #tempEmp
SET Printed = 0
GO
 
-- SQL does not print column values directly, requires variables.
 
--Declares variables for use in printing
DECLARE @EmpEmail VARCHAR(30)
DECLARE @EmpName VARCHAR(30)
DECLARE @Campus VARCHAR(30)
DECLARE @ID INT
--Creates a while loop to iterate through the rows
WHILE EXISTS (SELECT *
      FROM #tempEmp 
      WHERE Printed = 0)
BEGIN
      SELECT @ID = MIN(empNum)
         FROM #tempEmp 
         WHERE Printed = 0
      SELECT @EmpEmail = #tempEmp.empEmail,
             @EmpName = #tempEmp.empName,
             @Campus = campus.cName
      FROM #tempEmp 
      JOIN campus
      ON #tempEmp.campusId = campus.iden
      WHERE @ID = #tempEmp.empNum
 
      --Prints out the report for each employee
      PRINT 'Hi '+@EmpName
      PRINT ''
      PRINT 'We have emailed this letter to '+@EmpEmail
      PRINT 'Let us know if this changes'
      PRINT 'Let us know about any problems that you are experiencing in the' + @Campus + ' campus'
      PRINT 'Regards, Head Office'
 
      UPDATE #tempEmp 
         SET Printed = 1 
         WHERE @ID = empNum
END
GO
 
--Drops the temp table 
DROP TABLE #tempEmp
GO