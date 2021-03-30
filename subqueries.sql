-- NORMAL SUBQUERY
USE University
GO

SELECT * FROM employee
WHERE campusID ON(SELECT campusID FROM student WHERE fName = 'Dean')
GO

-- CORRELATED SUBQUERY
USE University
GO

SELECT campStaff.empName, campStaff.empEmail, campusID
FROM campStaff
WHERE campusID = ( SELECT campusID FROM student WHERE campusID = 6);