DECLARE @STR VARCHAR(5000) = '2'
DECLARE @N INT = 3


WHILE(@N <= 1000)
BEGIN

--PRINT @N

DECLARE @I INT = 2

WHILE @I < @N
BEGIN
--PRINT @I
IF(@N%@I = 0)
BEGIN
BREAK
END
ELSE
BEGIN
SET @I = @I+1
END

END
--PRINT '-----'
--PRINT @I
--PRINT @N
--PRINT '*****'

IF(@I = @N)
BEGIN
--PRINT @N
SET @STR = @STR + '&' + STR(@N)
END

SET @N = @N+1

END

PRINT REPLACE(@STR,' ','')