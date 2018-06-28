CREATE FUNCTION ufn_IsWordComprised(@SetOfLetters NVARCHAR(MAX), @Word NVARCHAR(MAX))
RETURNS BIT
AS
BEGIN
      DECLARE @IsWordComprised BIT = 0;
      DECLARE @CurrentIndex INT = 1;
	  DECLARE @CurrentChar NVARCHAR(1);

      WHILE(@CurrentIndex <= LEN(@Word))
	  BEGIN

	  SET @CurrentChar = SUBSTRING(@Word, @CurrentIndex, 1);
	  IF(CHARINDEX(@CurrentChar, @SetOfLetters) = 0)
	    RETURN @IsWordComprised
	  SET @CurrentIndex += 1;
	  END

	  RETURN @IsWordComprised + 1;
END
