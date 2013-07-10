CREATE TABLE [dbo].[physical_activity]
(
	id INT NOT NULL IDENTITY, 
	name NVARCHAR(200) NOT NULL,
	[description] NVARCHAR(1000),
	[category_id] INT NOT NULL,
	[met] DECIMAL(5,2) NOT NULL,
	[enabled] BIT NOT NULL DEFAULT 1,

	PRIMARY KEY(id),
	CONSTRAINT [fk_physical_activity_physical_activity_category] FOREIGN KEY(category_id) REFERENCES physical_activity_category(id)

)

