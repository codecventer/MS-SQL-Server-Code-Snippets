SELECT column_list
FROM table_name1
INNER JOIN table_name2
ON table_name1.column_name = table_name2.column_name

--

UPDATE table_name
WHERE column_name
INNER JOIN table_name2
ON table_name2.column_name = table_name2.column_name

--

USE University
GO

SELECT student.fName, student.sName, campus.cName
FROM students
INNER JOIN campus
ON student.campusID = campus.iden
