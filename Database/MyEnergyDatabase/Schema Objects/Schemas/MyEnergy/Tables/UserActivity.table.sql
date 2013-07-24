CREATE TABLE [dbo].[UserActivity]
(
	Id INT NOT NULL IDENTITY,  
	[UserId] INT NULL, 
	[Date] DATE NOT NULL,
	[ActivityId] INT NOT NULL,
	[DurationMin] INT NOT NULL,
	
	CONSTRAINT PK_UserActivity PRIMARY KEY(Id),

	CONSTRAINT [FK_UserActivity_ActivityCategory]  
		FOREIGN KEY([UserId]) 
			REFERENCES ActivityCategory(Id) 
		ON DELETE CASCADE 
		ON UPDATE CASCADE  

)


