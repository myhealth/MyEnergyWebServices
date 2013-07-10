CREATE TABLE [dbo].[month_metrics]
(
	[user_id] BIGINT NOT NULL,
	[date] DATE NOT NULL, 

	[medical_condition] INT NULL, 
	[medication] INT NULL,	
	[pregnancy] BIGINT NULL,	/* TODO: Should pregnancy be in the month_metrics or in user table ?*/
	[vitamins_and_or_minerals_suplements] NVARCHAR(MAX) DEFAULT '',
	[breast_feeding] BIGINT NULL,
	

	PRIMARY KEY([user_id], [date]),
	
	CONSTRAINT [fk_month_metrics_] FOREIGN KEY([user_id]) REFERENCES [user]([user_id]),
	CONSTRAINT [fk_month_metrics_medical_condition] FOREIGN KEY([medical_condition]) REFERENCES [medical_condition](id),
	CONSTRAINT [fk_month_metrics_medication] FOREIGN KEY([medication]) REFERENCES [medication](id),
	CONSTRAINT [fk_month_metrics_pregnancy] FOREIGN KEY([pregnancy]) REFERENCES [pregnancy](id),
	CONSTRAINT [fk_month_metrics_breast_feeding] FOREIGN KEY([breast_feeding]) REFERENCES [breast_feeding](id)
)
