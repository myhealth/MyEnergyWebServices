CREATE TABLE [dbo].[food_category]
(
	[id] INT NOT NULL IDENTITY, 
	[name] NVARCHAR(512) NOT NULL UNIQUE,
	[description] NVARCHAR(MAX),


	CONSTRAINT pk_category PRIMARY KEY(id)	
)
