USE lead_by_example
GO

CREATE PROCEDURE spAdd
@num1 INT,
@num2 INT,
@result INT OUTPUT
AS
SELECT @result = @num1+@num2

-- Values need to be supplied to execute this stored procedure:

USE lead_by_example
GO

DECLARE @ans INT
EXEC spAdd 2, 4, @ans OUTPUT
PRINT @ans