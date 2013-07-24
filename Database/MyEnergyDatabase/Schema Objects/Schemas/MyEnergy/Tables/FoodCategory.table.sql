/**
	This table represents both a food category and a food subcategory
	it can be used to model a tree with N levels but we're only going
	to use it for ONE and ONE level only!
				Category ---> Subcategory
		ex:		category(id => 1, name => Fruits and Vegetables, category_id => NULL, ...) 
			 	subcategory(id = 2, name =>	Apple, category_id => NULL, ...)	
	
*/

CREATE TABLE [dbo].[FoodCategory]
(
	[Id] INT NOT NULL IDENTITY, 
	[CategoryId] INT NULL, 
	[Name] NVARCHAR(512) NOT NULL UNIQUE,
	[Description] NVARCHAR(MAX),


	CONSTRAINT PK_Category PRIMARY KEY(Id),
	
	CONSTRAINT FK_Category_Subcategory 
		FOREIGN KEY ([CategoryId]) REFERENCES [FoodCategory](Id)
)
