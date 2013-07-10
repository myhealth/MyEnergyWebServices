CREATE TABLE [dbo].[user]
(
	[user_id] BIGINT NOT NULL, 
	[first_name] NVARCHAR(50),
	[birthdate] DATE NOT NULL,
	[creation_date] DATE NOT NULL DEFAULT GETDATE(),
	[gender] CHAR CHECK (gender IN ('m', 'f')) DEFAULT 'm',
	
	CONSTRAINT PK_user PRIMARY KEY([user_id])
)