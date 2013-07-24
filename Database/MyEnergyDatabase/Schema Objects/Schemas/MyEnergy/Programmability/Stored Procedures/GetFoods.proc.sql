CREATE PROCEDURE [dbo].[GetFoods](
	@pageNumber int,
	@pageSize int = 50
	)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		*
	FROM 
		 (SELECT  ROW_NUMBER() OVER (ORDER BY [id] asc) as rowNumber,*
			FROM [food]) AS tblFood
		WHERE rowNumber BETWEEN ( ((@pageNumber - 1) * @pageSize )+ 1) AND @pageNumber * @pageSize 
	
	
	ORDER BY [id] ASC
	
END




