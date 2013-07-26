CREATE TABLE [dbo].[Medication]
(
	[Id] INT NOT NULL IDENTITY, 
	[Name] NVARCHAR(255) NOT NULL,
	[Description] TEXT,

	CONSTRAINT PK_Medication PRIMARY KEY([Id])
)
