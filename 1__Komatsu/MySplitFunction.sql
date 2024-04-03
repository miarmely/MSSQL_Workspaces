use dbTemsa
go

CREATE FUNCTION Miar_StringSplit
(
	@ValuesInString varchar(MAX),
	@SplitChar char(1)
)
RETURNS table
AS
BEGIN
	DECLARE @ValuesInStringLength int	= LEN(@ValuesInString);
	DECLARE	@Position int				= 1;
	DECLARE @ValuesInTable table		( Value varchar(MAX) );

	WHILE(@Position <= @ValuesInStringLength)
	BEGIN
		-- get first matched comma index 
		DECLARE @CommaIndex int
		= (SELECT CHARINDEX(@SplitChar, @ValuesInString, @Position));

		-- when reached to last value
		IF(@CommaIndex = 0)
			SET @CommaIndex = @ValuesInStringLength + 1;

		-- get value before comma
		DECLARE @Value varchar(MAX) 
		= (SELECT SUBSTRING(@ValuesInString, @Position, @CommaIndex-@Position));

		-- add value to @ValuesInTable
		INSERT INTO	@ValuesInTable
		VALUES		(RTRIM(LTRIM(@Value)));
	
		-- update @Position
		SET @Position = @CommaIndex + 1  -- "2": pass ',' between values
	END
	
	RETURN @ValuesInTable;
	
END
GO

