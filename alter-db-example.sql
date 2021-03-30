
USE master
GO

ALTER DATABASE University
ADD FILEGROUP custom_filegroup
GO

ALTER DATABASE University
ADD FILE
(
    NAME = custom_file,
    FILENAME = 'C:\TSQL Databases\custom_filegroup.ndf',
    SIZE = 5MB
)
TO FILEGROUP custom_filegroup
GO

ALTER DATABASE University
MODIFY FILEGROUP custom_filegroup DEFAULT
GO

-- Line 1 uses the master database.
-- Line 4 alters the University database.
-- Line 5 adds a file group to the database.
-- Line 9 adds a file, specifying its attributes.
-- Line 15 tells the compiler that the file created must be added to the custom_filegroup file group.
-- Line 19 modifies the file group to make it the default file group, a file group cannot be modified if it does not contain files.