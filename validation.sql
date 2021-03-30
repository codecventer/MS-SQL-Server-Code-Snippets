USE lead_by_example
GO

CREATE PROCEDURE spDollarToRand
@Dollars REAL,
@Rate REAL,
@Rands REAL OUTPUT
AS
    IF(@Rate<0)
    BEGIN
        PRINT 'The Rand is stronger than the Dollar'
    END
    ELSE
    BEGIN
        PRINT 'The Dollar is stronger than the Rand'
    END

    IF(@Dollars<0)
    BEGIN
        RAISERROR('You cannot enter a negative value for Dollars',16,1)
        RETURN
    END

    SELECT @Rands = @Dollar*@Rate
GO