CREATE PROCEDURE [dbo].[GetUserById]
	@id int
AS
BEGIN
	
	SELECT * FROM [user] WHERE [user_id] = @id;

END


