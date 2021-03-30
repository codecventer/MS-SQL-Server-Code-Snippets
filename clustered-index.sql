USE University
GO
-- Create a table if you do not have an existing table.
 
CREATE table  dbo.student
  	(stuNumber int NOT NULL,
  	 name      nvarchar (10) NOT NULL,
  	 surname   nvarchar (10) NOT NULL,
  	 module    nvarchar (10) NOT NULL
  	 )
 GO
-- Creating a clustered index called IX_student_StuNumber
 
 CREATE CLUSTERED INDEX IX_student_stuNumber
  	ON dbo.Student
    	( stuNumber );
 GO