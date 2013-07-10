CREATE TABLE [dbo].[food_subcategory]
(
	[id] INT NOT NULL IDENTITY, 
	[name] NVARCHAR(512) NOT NULL UNIQUE,
	[description] NVARCHAR(MAX),


	CONSTRAINT pk_subcategory PRIMARY KEY(id)	
)