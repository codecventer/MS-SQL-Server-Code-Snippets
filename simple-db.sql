
USE master
GO

CREATE DATABASE University 
ON PRIMARY
(
    NAME = 'university_data',
    FILENAME = 'C:\TSQL Databases\university_data.mdf', 
    SIZE = 5MB,
    FILEGROWTH = 10%
)
LOG ON
(
    NAME = 'university_log',
    FILENAME = 'C:\TSQL Databases\university_log.ldf',
    SIZE = 5MB,
    FILEGROWTH = 10%
)
GO

-- Line 1 is the USE command; it ensures that only the master database has permission to allow the CREATE DATABASE statement.
-- Line 2 uses the GO statement, which will be explained later on in the module.
-- Line 4 contains the CREATE command along with what needs to be created, in this case DATABASE and the name of the database is then defined, in the database list.
-- Line 5 is the declaration of the primary data file that the database uses.
-- Line 6 contains an open bracket showing that it is the beginning of the file specifications for the primary data file and must have a corresponding closing bracket. 
-- Line 7 declares the name of the primary data file for referencing purposes.
-- Line 8 declares the file name and path for the primary data file that is stored on your drive. Please ensure your path is set up correctly.
-- Line 9 declares the initial size of the file.
-- Line 10 declares at what rate the file should grow.
-- Line 11 closes the opening bracket.
-- Line 12 declares that the log file is being created and the file specifications will follow; the same rules apply to the log file as to the primary data file.