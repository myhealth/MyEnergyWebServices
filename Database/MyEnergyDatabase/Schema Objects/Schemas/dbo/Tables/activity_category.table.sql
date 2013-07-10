CREATE TABLE [dbo].[physical_activity_category] 
(
	[id] INT IDENTITY(1,1) NOT NULL ,
	[name] NVARCHAR(300) NOT NULL,
	[enabled] BIT DEFAULT 1 NOT NULL,

	PRIMARY KEY(id)
)
