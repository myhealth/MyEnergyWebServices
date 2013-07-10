/**
	DESC: full specifies an activity an user can performs
*/
CREATE TABLE [dbo].[activity]
(
	id INT NOT NULL IDENTITY, 
	name NVARCHAR(200) NOT NULL,
	[description] NVARCHAR(1000),
	[category_id] INT NOT NULL,
	[met] DECIMAL(5,2) NOT NULL,
	[enabled] BIT NOT NULL DEFAULT 1,

	PRIMARY KEY(id),
	FOREIGN KEY(category_id) REFERENCES activity_category(id)

)

