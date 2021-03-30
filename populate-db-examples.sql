
USE lead_by_example
GO
 
INSERT INTO storeBranch
VALUES (001, 'Park Town','Gauteng')
GO
 
INSERT INTO storeBranch
VALUES (002, 'Sunnyside','Gauteng')
GO
 
INSERT INTO storeBranch
VALUES (003, 'Durban','KZN')
GO
 
INSERT INTO storeBranch
VALUES (004, 'Tweebuffelsfontein','Freestate')
GO
--CREATE MORE BRANCHES OF YOUR OWN
 
INSERT INTO storeEmployee
      VALUES (8763749987412, 'Dave','Mthethwa', 001)
GO
 
INSERT INTO storeEmployee
      VALUES (7763749987413, 'David','Genaro', 002)
GO
 
INSERT INTO storeEmployee
      VALUES (8753653987416, 'Will','Smith', 001)
GO
 
INSERT INTO storeEmployee
      VALUES (1763749787411, 'Taylor','Swift', 002)
GO
--CREATE MORE OF YOUR OWN NAMES
 
INSERT INTO species
VALUES ('Frog')   -- Notice that no value is entered for the identity column
GO
 
INSERT INTO species
VALUES ('Rat')
GO
 
INSERT INTO species
VALUES ('Dog')
GO
 
INSERT INTO species
VALUES ('Cat')
GO
 
-- This code can be made simpler by not specifying 
-- INSERT INTO so many times:
 
INSERT INTO pets
VALUES      (012, 'Freddy',4,001),
                 --Freddy the cat at the Randpark branch
            (013, 'Darryn',2,001),
                 --Darryn the rat at the Randpark branch
            (014, 'Jonny',1,002),
                   --Jonny the frog at the Durban branch
            (015, 'Felix',3,002)
                  --Felix the dog at the Durban branch
GO


-- You need an explicit statement to force data entry into an identity column.
SET IDENTITY_INSERT table_name ON
INSERT INTO table_name
VALUES ( Identity_value, other_value, other_value...)


-- Here is an example where we try and insert a new record into the species table:
INSERT INTO species
VALUES ( 5, 'Bird')
GO


-- To successfully insert the bird specie into the table we will need to change our code as follow:
SET IDENTITY_INSERT species ON
INSERT INTO species(speciesID, speciesText)
VALUES ( 5, 'Bird')
GO

-- Now that you have populated your database with information, you can delete or change this information as follows:
USE lead_by_example
GO
 
UPDATE species
SET speciesText = 'Lion'
WHERE speciesID = 4
GO


-- Try to work out how to DELETE a record from one of your tables. The following code shows how this is done:
USE lead_by_example
GO
 
DELETE FROM storeBranch
WHERE storeID = 003
GO
-- This deletes the record 003, Tweebuffelsfontein, Freestate from the table storeBranch, which is acceptable as there are no records referencing it.
-- If a record that is being referenced needs to be deleted, the referencing record would need to be deleted first.