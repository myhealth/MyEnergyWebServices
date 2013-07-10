CREATE PROCEDURE [dbo].[GetUsers](
	@index int,
	@count int = 50
	)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		*
	FROM 
		 (SELECT  ROW_NUMBER() OVER (ORDER BY creation_date asc) as rowNumber,*
			FROM [user]) tblUser
		WHERE rowNumber BETWEEN ( ((@index - 1) * @count )+ 1) AND @index*@count 
	
	
	ORDER BY creation_date ASC
	
END




