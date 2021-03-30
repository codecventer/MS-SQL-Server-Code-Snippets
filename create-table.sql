
USE University
GO

CREATE TABLE campus
(
    iden INT NOT NULL,
    cName VARCHAR(40) NOT NULL,
    area VARCHAR(40) NULL,
    telephone VARCHAR(40) NULL,
    PRIMARY KEY (iden),-- this will be explained next
    CONSTRAINT ConCampusID UNIQUE(iden,cName)
)
GO

-- Line 1 Uses the database University
-- Line 4 creates a table called ‘campus’.
-- Line 5 shows the beginning of the column declaration.
-- Line 6 declares a column called ‘iden’ of the INT data type and makes it NOT NULL (mandatory). This column represents the campusID.


CREATE TABLE student
(
    StuID INT NOT NULL  PRIMARY KEY,
    fName VARCHAR(50) NOT NULL,
    sName VARCHAR(50) NOT NULL,   
    campusID int NOT NULL,  
    CONSTRAINT FK_tempStudent FOREIGN KEY(campusID) REFERENCES campus(iden)
ON DELETE CASCADE
)
GO

-- Line 28, is an example of creating a foreign key.


CREATE TABLE campStaff
(
    empNum INT NOT NULL IDENTITY, --auto-generated numbers
    empEmail VARCHAR(30) NOT NULL,
    empName VARCHAR(40) NOT NULL,
    campusID INT NOT NULL REFERENCES campus(iden), --foreign key constraint 
    CONSTRAINT emp_EMAIL_ADD UNIQUE (empEmail),
    PRIMARY KEY(empNum)--primary key constraint
)
GO

-- Line 41 – This foreign key can also be created by using the CONSTRAINT keyword. This code will only work if the referenced table and column exists.
-- Line 42 – This column uses the CONSTRAINT keyword and converts the empEmail into a unique column.
--     A name is given to the constraint for internal referencing (emp_EMAIL_ADD).
--     This unique constraint uses the nonclustered option by default.
-- Line 43 – This uses the PRIMARY KEY constraint and it can also be created by using the line: CONSTRAINT prKey_empNum PRIMARY KEY (empNum).