
USE Master
GO

IF EXISTS (SELECT name FROM master.dbo.sysdatabases
WHERE name = 'database_name')
DROP DATABASE database_name
GO

-- This code first checks whether or not the database exists; if it does, it is dropped.
-- Placing this code directly above your CREATE DATABASE statement lets you start fresh every time the script file is run.