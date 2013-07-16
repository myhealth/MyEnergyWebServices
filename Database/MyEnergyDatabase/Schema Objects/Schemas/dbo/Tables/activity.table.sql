CREATE TABLE [dbo].[activity]
(
	[id] INT NOT NULL IDENTITY, 
	[name] NVARCHAR(200) NOT NULL,
	[description] NVARCHAR(1000),
	[category_id] INT NOT NULL,
	[met] DECIMAL(5,2) NOT NULL,
	
	PRIMARY KEY(id),

	CONSTRAINT [fk_activity_activity_category] 
		FOREIGN KEY(category_id) REFERENCES activity_category(id)
		ON DELETE CASCADE 
		ON UPDATE CASCADE  

)

