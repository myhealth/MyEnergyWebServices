CREATE TABLE [dbo].[MedicalCondition]
(
	[Id] INT NOT NULL IDENTITY,
	[Name] NVARCHAR(200) NOT NULL,
	[Description] NVARCHAR(MAX) NULL,
	
	/*	Tree struture with max of one level to structure properties a medical condition may have	
	example
	medical_cond(1, "diabetes", '', NULL, NULL),
	medical_cond(2, "insulino dependente", 1, 'boolean')
	
	*/
	[ParentId] INT NULL,
	[PropDataType] NVARCHAR (15) NULL,
	

	CONSTRAINT PK_MedicalCondition PRIMARY KEY ([Id]),
	
	
	CONSTRAINT CK_MedicalCondition_PropDataType CHECK([PropDataType] IN ('decimal', 'integer', 'bit'))

)
