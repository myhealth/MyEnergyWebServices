CREATE TABLE [dbo].[weekly_metric]
(	
	[user_id] BIGINT NOT NULL,
	[date] DATETIME NOT NULL,
		
	[weight] DECIMAL(5,2) NOT NULL,
	[height] SMALLINT NOT NULL,

	PRIMARY KEY([user_id], [date]),
	FOREIGN KEY([user_id]) REFERENCES [user]([user_id])
)
