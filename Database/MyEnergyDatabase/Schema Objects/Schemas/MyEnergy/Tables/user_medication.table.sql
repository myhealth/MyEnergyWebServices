CREATE TABLE [dbo].[user_medication]
(
	[user_id] BIGINT NOT NULL,
	[date] DATE NOT NULL, 
	[medication_id] INT NOT NULL,
	
	CONSTRAINT user_med PRIMARY KEY ([user_id],[date], [medication_id]),

	CONSTRAINT user_med_user 
		FOREIGN KEY([user_id]) REFERENCES [user](UserId)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,

	CONSTRAINT user_med_medication_id 
		FOREIGN KEY ([medication_id]) REFERENCES [medication](id)
			ON DELETE CASCADE 
			ON UPDATE CASCADE  
)
