CREATE PROCEDURE [dbo].[GetFoodById](
	@id int = 0
	) 

AS
BEGIN
	SELECT	* 
	FROM food WHERE id = @id
END