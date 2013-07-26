CREATE TABLE [dbo].[FoodSubcategory]
(
	[Id] INT NOT NULL IDENTITY, 
	[Name] NVARCHAR(512) NOT NULL UNIQUE,
	[Description] NVARCHAR(MAX),
	[FoodCategory] INT NOT NULL,


	CONSTRAINT PK_FoodSubcategory PRIMARY KEY(Id),
	
	CONSTRAINT FK_FoodSubCategory_FoodCategory
		FOREIGN KEY ([FoodCategory]) REFERENCES FoodCategory(Id) 
		ON DELETE CASCADE
)
