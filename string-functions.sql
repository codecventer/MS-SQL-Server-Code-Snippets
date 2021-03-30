DECLARE @x VARCHAR(30)
 
SET @x = '    Hello, my name is Death.'
 
PRINT 'Normal: '
PRINT @x
PRINT ''
 
PRINT 'Upper case: '
PRINT UPPER(@x)
PRINT ''
 
PRINT 'Lower case: '
PRINT LOWER(@x)
PRINT ''
 
PRINT 'Remove leading spaces: '
PRINT LTRIM(@x)
PRINT ''
 
PRINT 'First index of "Death": '
PRINT CAST (PATINDEX('%Death%', @x) AS VARCHAR)
PRINT ''
 
PRINT 'Replace "Death" with "Cake": '
PRINT REPLACE(@x, 'Death', 'Cake')
PRINT ''
 
PRINT 'Reverse the char string:'
PRINT REVERSE(@x)
PRINT ''
 
PRINT 'Use of substring:'
PRINT SUBSTRING(@x, 20, 8)
 
PRINT 'LEN' + 'IS VERY USEFUL'
PRINT 'LEN' + REPLICATE(' ', 5 - LEN('LEN')) + 'IS VERY USEFUL'