CREATE TABLE [dbo].[AnthropometricTrait]
(
	[Name] NVARCHAR(255) NOT NULL, 
	[DataType] NVARCHAR(15) NOT NULL,
	[Description] NVARCHAR(MAX) NULL,

	
	CONSTRAINT PK_AnthropometricTrait PRIMARY KEY(Name),
	
	CONSTRAINT CK_DataType CHECK([DataType] IN ('decimal', 'integer'))
)
