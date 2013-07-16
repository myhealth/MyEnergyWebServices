
CREATE TABLE [dbo].[user_breast_feeding]
(
	[id] BIGINT NOT NULL IDENTITY,
	[user_id] BIGINT NOT NULL,
	[start_date] DATE NOT NULL,
	[end_date] DATE NULL,

	CONSTRAINT pk_user_breast_feeding PRIMARY KEY([id]),
	
	CONSTRAINT fk_user_breast_feeding_user 
		FOREIGN KEY([user_id]) REFERENCES [user]([user_id])
		ON DELETE CASCADE
		ON UPDATE CASCADE
)

