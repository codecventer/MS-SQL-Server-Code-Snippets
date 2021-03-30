USE lead_by_example
GO
 
CREATE TABLE errors --New table for errors to be recorded 
(
      errorCode INT NOT NULL,
      errorDisc VARCHAR(100) NOT NULL
)
GO
 
CREATE TRIGGER tr_notify
ON employee
AFTER INSERT
AS
print 'Employee inserted successfully'
GO
 
CREATE TRIGGER tr_edit_store
ON storeBranch
INSTEAD OF INSERT, DELETE, UPDATE
AS
      RAISERROR ('You cannot edit the information in that table', 16, 10);
 
      INSERT INTO errors 
      VALUES(123,'USER TRIED TO EDIT TABLE STOREBRANCH. 
         TIME: '+CAST(GETDATE()  AS VARCHAR))
GO

-- Another example:

USE lead_by_example
GO
 
INSERT INTO storeBranch
VALUES(3,'Reg pets','Bloem')
GO
 
INSERT INTO storeEmployee VALUES (7485738293847,'James','Ntente',2)
GO