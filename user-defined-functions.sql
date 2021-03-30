USE lead_by_example
GO

CREATE FUNCTION RoyaltiesByAuthor()
RETURN TABLE
AS
RETURN
(
    SELECT authors.au_fName, authors.au_lname, titles.title,
    (titles.ytd_sales * titles.price * titles.royalty / 100) AS 'RDate'
    FROM authors, titles, titleauthor
    WHERE authors.au_id = titleauthor.au_id
    AND titles.title_id = titleauthor.title_id
)

-- This function returns a table, when it is called, it should be part of a query:

USE lead_by_example
GO

SELECT au_fName, RDate FROM dbo.RoyaltiesByAuthor()

-- To create a function that returns a scalar value, see the following code:

CREATE FUNCTION sumRDates()
RETURNS INT
AS
BEGIN
    DECLARE @num INT
    SELECT @num = SUM(RDate)
    FROM dbo.RoyaltiesByAuthor()

    RETURN @num
END
GO