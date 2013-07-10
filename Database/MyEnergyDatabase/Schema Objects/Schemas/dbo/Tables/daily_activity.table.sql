CREATE TABLE [dbo].[daily_activity]
(
	id INT NOT NULL IDENTITY,  
	[user_id] INT NULL, 
	[date] DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

	[duration_min] INT NOT NULL,
	[activity_id] INT NOT NULL,
	
	PRIMARY KEY(id),
	FOREIGN KEY([user_id]) REFERENCES activity(id) 

)


