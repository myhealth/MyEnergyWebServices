CREATE TABLE [dbo].[activity_category] 
(
	[id] INT IDENTITY NOT NULL ,
	[name] NVARCHAR(300) NOT NULL,
	[description] NVARCHAR (MAX) NULL,
	[image_uri] NVARCHAR(512) NULL,

	CONSTRAINT pk_activity_category PRIMARY KEY(id),

	
)
