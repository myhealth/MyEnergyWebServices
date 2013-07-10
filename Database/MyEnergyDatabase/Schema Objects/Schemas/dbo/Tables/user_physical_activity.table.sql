CREATE TABLE [dbo].[user_physical_activity]
(
	id INT NOT NULL IDENTITY,  
	[user_id] INT NULL, 
	[date] DATE NOT NULL,
	[activity_id] INT NOT NULL,
	[duration_min] INT NOT NULL,
	
	PRIMARY KEY(id),
	CONSTRAINT [fk_user_physical_physical_activity_category]  FOREIGN KEY([user_id]) REFERENCES physical_activity_category(id) 

)


