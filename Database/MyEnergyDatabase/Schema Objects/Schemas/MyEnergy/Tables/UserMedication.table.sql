CREATE TABLE [dbo].[UserMedication]
(
	[UserId] BIGINT NOT NULL,
	[Date] DATE NOT NULL, 
	[MedicationId] INT NOT NULL,
	
	CONSTRAINT PK_UserMedication PRIMARY KEY ([UserId], [Date], [MedicationId]),

	CONSTRAINT FK_UserMedication_User
		FOREIGN KEY([UserId]) REFERENCES [User](UserId)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,

	CONSTRAINT FK_UserMedication_Medication
		FOREIGN KEY ([MedicationId]) REFERENCES [Medication](Id)
			ON DELETE CASCADE 
			ON UPDATE CASCADE  
)
