CREATE TABLE [dbo].[medication]
(
	[id] INT NOT NULL IDENTITY, 
	[name] NVARCHAR(255) NOT NULL,
	[description] TEXT,

	CONSTRAINT pk_medication PRIMARY KEY([id])
)
