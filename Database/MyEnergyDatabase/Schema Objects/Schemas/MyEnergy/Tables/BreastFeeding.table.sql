CREATE TABLE [dbo].[BreastFeeding]
(
	[Id] BIGINT NOT NULL IDENTITY,
	[UserId] INT NOT NULL,
	[StartDate] DATE NOT NULL,
	[EndDate] DATE NULL,

	CONSTRAINT PK_BreastFeeding PRIMARY KEY([Id])
)
