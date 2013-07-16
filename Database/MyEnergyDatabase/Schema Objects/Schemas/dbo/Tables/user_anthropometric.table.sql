CREATE TABLE [dbo].[user_anthropometric_data]
(
	[user_id] BIGINT NOT NULL,
	[date] INT NOT NULL,

	[trait_name] NVARCHAR(255) NOT NULL,
	[v_decimal] DECIMAL NULL,
	[v_int] INT NULL,
	
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

	CONSTRAINT pk_user_antro_data PRIMARY KEY([user_id], [date], [trait_name]),
	CONSTRAINT fk_user_antro_data_user  
		FOREIGN KEY([user_id])
			REFERENCES [user]([user_id]) 
			ON DELETE CASCADE,

	CONSTRAINT fk_user_antro_data_trait  
		FOREIGN KEY([trait_name]) 
			REFERENCES [anthropometric_trait]([name]) 
			ON DELETE CASCADE 
			ON UPDATE CASCADE  

)