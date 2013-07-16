CREATE TABLE [dbo].[user_activity]
(
	id INT NOT NULL IDENTITY,  
	[user_id] INT NULL, 
	[date] DATE NOT NULL,
	[activity_id] INT NOT NULL,
	[duration_min] INT NOT NULL,
	
	CONSTRAINT pk_user_activity PRIMARY KEY(id),

	CONSTRAINT [fk_user_activity_category]  
		FOREIGN KEY([user_id]) 
			REFERENCES activity_category(id) 
		ON DELETE CASCADE 
		ON UPDATE CASCADE  

)


