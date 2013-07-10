CREATE TABLE [dbo].[user]
(
	[user_id] BIGINT NOT NULL, 
	birthdate DATE NOT NULL,
	creation_date DATE NOT NULL,
	gender CHAR CHECK (gender IN ('m', 'f')) DEFAULT 'm',
	PRIMARY KEY([user_id])
)