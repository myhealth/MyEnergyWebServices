CREATE TABLE [dbo].[month_metrics]
(
	[user_id] BIGINT NOT NULL,
	[date] DATETIME NOT NULL,

	[cardiaca]			BIT NOT NULL DEFAULT 0,
	[respiratoria]		BIT NOT NULL DEFAULT 0,
	[endocrinologica]	BIT NOT NULL DEFAULT 0,
	[infeciosa]			BIT NOT NULL DEFAULT 0,
	[renal]			BIT NOT NULL DEFAULT 0,
	[nefrotica]		BIT NOT NULL DEFAULT 0,
	[gastrointestinal]	BIT NOT NULL DEFAULT 0,
	[hepatica]			BIT NOT NULL DEFAULT 0,
	[pancreatica]		BIT NOT NULL DEFAULT 0,
	[alergias]			BIT NOT NULL DEFAULT 0,
	[intolerancias_alimentares]		BIT NOT NULL DEFAULT 0,
	[anemia]						BIT NOT NULL DEFAULT 0,
	[deficiencias_nutricionais]		BIT NOT NULL DEFAULT 0,
	[cancro]		BIT NOT NULL DEFAULT 0,
	[neurologica]	BIT NOT NULL DEFAULT 0,
/*************************************************************************/
	
/*** Medication ************************************************************/
	[anti_depressivos] BIT NOT NULL DEFAULT 0,
	[anti_psicoticos] BIT NOT NULL DEFAULT 0,
	[anti_convulsivos] BIT NOT NULL DEFAULT 0,
	[anti_inflamatorios] BIT NOT NULL DEFAULT 0,
	[substituicao_hormonal] BIT NOT NULL DEFAULT 0,
	[cardiovasculares] BIT NOT NULL DEFAULT 0,
	[anti_alergicos] BIT NOT NULL DEFAULT 0,
	[anti_pireticos] BIT NOT NULL DEFAULT 0,

/*************************************************************************/
	
	[suplementacao_vitaminica_e_mineral] NVARCHAR(MAX) NOT NULL DEFAULT '',
	
/*************************************************************************/		
	[gravidez] BIT NOT NULL DEFAULT 0,
	[semestre] BIT NOT NULL DEFAULT 0,
	
	[amentacao] BIT NOT NULL DEFAULT 0,
	[amentacao_semestre] CHAR(1) NOT NULL DEFAULT '1',


	PRIMARY KEY([user_id], [date]),
	FOREIGN KEY([user_id]) REFERENCES [user]([user_id])
)
