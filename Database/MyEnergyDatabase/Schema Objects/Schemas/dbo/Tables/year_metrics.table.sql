CREATE TABLE [dbo].[year_metrics]
(
	[user_id] BIGINT NOT NULL,
	[date] INT NOT NULL,


/**	Anthropometric data **************************************************/
	
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

	PRIMARY KEY([user_id], [date]),
	CONSTRAINT [year_metrics_user]  FOREIGN KEY([user_id]) REFERENCES [user]([user_id])
)