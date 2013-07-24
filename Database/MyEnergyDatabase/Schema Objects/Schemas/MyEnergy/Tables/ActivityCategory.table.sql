CREATE TABLE [dbo].[ActivityCategory] 
(
	[Id] INT IDENTITY NOT NULL ,
	[Name] NVARCHAR(300) NOT NULL,
	[Description] NVARCHAR (MAX) NULL,
	[ImageURI] NVARCHAR(512) NULL,

	CONSTRAINT PK_ActivityCategory PRIMARY KEY(Id),

	
)
