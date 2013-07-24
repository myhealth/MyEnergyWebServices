CREATE PROCEDURE [dbo].[DeleteFoodWithId]
	@id int
AS
	DELETE FROM [dbo].food WHERE id = @id
