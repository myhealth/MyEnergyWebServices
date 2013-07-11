/**
	This table represents both a food category and a food subcategory
	it can be used to model a tree with N levels but we're only going
	to use it for ONE and ONE level only!
				Category ---> Subcategory
		ex:		category(id => 1, name => Fruits and Vegetables, category_id => NULL, ...) 
			 	subcategory(id = 2, name =>	Apple, category_id => NULL, ...)	
	
*/

CREATE TABLE [dbo].[food_category]
(
	[id] INT NOT NULL IDENTITY, 
	[category_id] INT NULL, 
	[name] NVARCHAR(512) NOT NULL UNIQUE,
	[description] NVARCHAR(MAX),


	CONSTRAINT pk_category PRIMARY KEY(id),
	
	CONSTRAINT fk_category_subcategory 
		FOREIGN KEY ([category_id]) REFERENCES [food_category](id)

	
)
