CREATE PROCEDURE [dbo].[DeleteUserWithId]
	@id int
AS
BEGIN
	DELETE FROM [user]  WHERE [user_id] = @id;
END


