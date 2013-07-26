CREATE TABLE [dbo].[UserMedicalCondition]
(
	[UserId] BIGINT NOT NULL,
	[Date] DATE NOT NULL, 
	[MedicalConditionId] INT NOT NULL,
	
	[DecimalValue] DECIMAL NULL,
	[IntegerValue] INTEGER NULL,
	[BooleanValue] BIT NULL,

	CONSTRAINT PK_UserMedicalCondition PRIMARY KEY ([UserId],[Date], [MedicalConditionId]),
	
	CONSTRAINT FK_UserMedicalCondition_User
		FOREIGN KEY ([UserId]) REFERENCES [User]([UserId])
			ON DELETE CASCADE 
			ON UPDATE CASCADE,

	CONSTRAINT FK_UserMedicalCondition_MedicalCondition
		FOREIGN KEY ([MedicalConditionId]) REFERENCES MedicalCondition([Id])
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
)
