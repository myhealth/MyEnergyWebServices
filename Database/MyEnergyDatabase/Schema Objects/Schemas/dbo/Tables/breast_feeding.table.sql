﻿CREATE TABLE [dbo].[breast_feeding]
(
	[id] BIGINT NOT NULL IDENTITY,
	[user_id] INT NOT NULL,
	[start_date] DATE NOT NULL,
	[end_date] DATE NULL,

	PRIMARY KEY([id])
)