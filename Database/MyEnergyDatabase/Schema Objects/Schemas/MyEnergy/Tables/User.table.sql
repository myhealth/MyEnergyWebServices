CREATE TABLE [dbo].[User]
(
	[UserId] BIGINT NOT NULL, 
	[FirstName] NVARCHAR(50),
	[Birthdate] DATE NOT NULL,
	[CreationDate] DATE NOT NULL DEFAULT GETDATE(),
	[Gender] NVARCHAR(16)  DEFAULT 'Male' NOT NULL,
	

	CONSTRAINT PK_User PRIMARY KEY([UserId]),
	CONSTRAINT CK_Gender CHECK (gender IN ('Male', 'Female')),

)