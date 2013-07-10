CREATE TABLE [dbo].[user_medical_condition]
(
	[user_id] BIGINT NOT NULL,
	[date] DATE NOT NULL,
	[medical_condition] INT NOT NULL,

	PRIMARY KEY([user_id], [date], [medical_condition]),
	
	
	CONSTRAINT [fk_user_medical_condition_medical_condition] FOREIGN KEY ([medical_condition]) REFERENCES [dbo].[medical_condition](id) 
)
