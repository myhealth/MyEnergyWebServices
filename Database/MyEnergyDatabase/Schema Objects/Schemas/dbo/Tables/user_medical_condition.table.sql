
/**
Example:

**/

CREATE TABLE [dbo].[user_medical_condition]
(
	[user_id] BIGINT NOT NULL,
	[date] DATE NOT NULL, 

	[med_cond_id] INT NOT NULL,
	
	[med_cond_prop_id]  INT NULL,
	[value] NVARCHAR(255) NULL,

	CONSTRAINT pk_user_med_cond PRIMARY KEY ([user_id],[date], [med_cond_id]),
	
	CONSTRAINT fk_user_med_cond_user 
		FOREIGN KEY ([user_id]) REFERENCES [user]([user_id])
			ON DELETE CASCADE 
			ON UPDATE CASCADE,

	CONSTRAINT fk_user_med_cond_med_cond 
		FOREIGN KEY ([med_cond_id]) REFERENCES medical_condition([id])
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
)
