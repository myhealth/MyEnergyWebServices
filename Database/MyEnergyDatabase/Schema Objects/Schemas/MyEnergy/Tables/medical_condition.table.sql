CREATE TABLE [dbo].[medical_condition]
(
	[id] INT NOT NULL IDENTITY,
	[name] NVARCHAR(200) NOT NULL,
	[description] NVARCHAR(MAX) NULL,
	
	/*	Tree struture with max of one level to structure properties a medical condition may have	
	example
	medical_cond(1, "diabetes", '', NULL, NULL),
	medical_cond(2, "insulino dependente", 1, 'boolean')
	
	*/
	[parent_id] INT NULL,
	[prop_data_type] NVARCHAR (15) NULL,
	

	CONSTRAINT pk_medical_condition PRIMARY KEY ([id]),
	
	
	CONSTRAINT ck_medical_condition CHECK([prop_data_type] IN ('decimal', 'integer', 'bit'))

)
