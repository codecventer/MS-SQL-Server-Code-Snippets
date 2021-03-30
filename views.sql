USE University
GO

CREATE VIEW vw_Example
AS
    SELECT employee.empName, campus.cName
    FROM employee
    JOIN campus
    ON employee.campusID = campus.iden
GO 