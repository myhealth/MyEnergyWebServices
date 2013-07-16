CREATE TABLE [dbo].[user]
(
	[user_id] BIGINT NOT NULL, 
	[first_name] NVARCHAR(50),
	[birthdate] DATE NOT NULL,
	[creation_date] DATE NOT NULL DEFAULT GETDATE(),
	[gender] CHAR  DEFAULT 'm' NOT NULL,
	

	CONSTRAINT PK_user PRIMARY KEY([user_id]),
	CONSTRAINT ck_gender CHECK (gender IN ('m', 'f')),

)