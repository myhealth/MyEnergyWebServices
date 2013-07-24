CREATE TABLE [dbo].[anthropometric_trait]
(
	[name] NVARCHAR(255) NOT NULL, 
	[data_type] NVARCHAR(15) NOT NULL,
	[description] NVARCHAR(MAX) NULL,

	
	CONSTRAINT pk_anthropometric_trait PRIMARY KEY(name),
	
	CONSTRAINT ck_data_type CHECK([data_type] IN ('decimal', 'integer'))
)
