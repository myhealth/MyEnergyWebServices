CREATE TABLE [dbo].[User]
(
	[UserId] BIGINT NOT NULL, 
	[FirstName] NVARCHAR(50) NULL,
	[Birthdate] DATE NOT NULL,
	[CreationDate] DATE NOT NULL DEFAULT GETDATE(),
	[Gender] NVARCHAR(16)  DEFAULT 'Male' NOT NULL,
		

	CONSTRAINT PK_User PRIMARY KEY([UserId]),
	CONSTRAINT CK_Gender CHECK (gender IN ('Male', 'Female', 'Unknown')),
)

GO

EXEC sys.sp_addextendedproperty @name=N'Sogen_MapValue', @value=N'Gender
0:"Male"
1:"Female"
2:"Unknown"', 
@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Gender'
GO