
ALTER TABLE table_name
ADD
      add_type
DROP
      drop_type
 
ALTER column_name 
      alter_type
GO

-- The add_type is anything that needs to be added in the table, whether it is an extra column or constraints; the drop_type is similar but it is removed.
-- The ALTER column_name has to be included inside the ALTER table_name because it is part of the table.