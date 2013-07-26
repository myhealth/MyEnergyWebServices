CREATE TABLE [dbo].[UserAnthropometricData]
(
	[UserId] BIGINT NOT NULL,
	[Date] INT NOT NULL,

	[TraitName] NVARCHAR(255) NOT NULL,
	[VDecimal] DECIMAL NULL,
	[VInt] INT NULL,
	
	/*
	[gordura_corporal_relativa] DECIMAL(5,2) NOT NULL,
	
	/* perimetros */
	[perimetro_cintura] SMALLINT NOT NULL,
	[perimetro_anca] SMALLINT NOT NULL,
	[perimetro_braco] SMALLINT NOT NULL,
	[perimeter_geminal] SMALLINT NOT NULL,
	
	[prega_tricipal] SMALLINT NOT NULL,
	[prega_subescapular] SMALLINT NOT NULL,
	[prega_bicital] SMALLINT NOT NULL,
	[prega_ilio_cristal] SMALLINT NOT NULL,
	[espessura_adutor_policis] SMALLINT NOT NULL,
	*/

	CONSTRAINT PK_UserAntroData PRIMARY KEY([UserId], [Date], [TraitName]),
	CONSTRAINT FK_User_AntroData_User  
		FOREIGN KEY([UserId])
			REFERENCES [User](UserId) 
			ON DELETE CASCADE,

	CONSTRAINT Fk_UserAntroData_Trait  
		FOREIGN KEY([TraitName]) 
			REFERENCES [AnthropometricTrait]([Name]) 
			ON DELETE CASCADE 
			ON UPDATE CASCADE  

)