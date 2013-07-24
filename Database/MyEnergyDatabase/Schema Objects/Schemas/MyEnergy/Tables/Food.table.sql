CREATE TABLE [Food]
(
	[Id] BIGINT IDENTITY NOT NULL, 
	[Subcategory] INT NOT NULL,
	[Name] NVARCHAR(255) NOT NULL,

	[SmallPortion] INT NULL,
	[MediumPortion] INT NULL,
	[BigPortion] INT NULL,
	
	[SmallPortionImg] INT NULL,
	[MediumPortionImg] INT NULL,
	[LargePortionImg] INT NULL,

	/** Nutrictional information per 100g*/


	[Kcal] INT NOT NULL,
	[Proteins] DECIMAL(5,2) NOT NULL,
	[Fat] DECIMAL(5,2) NOT NULL,
	[CarbonHidrates] DECIMAL (5,2) NOT NULL,
	[Sugars] DECIMAL (5,2) NOT NULL,
	[Alchool] DECIMAL (5,2) NOT NULL DEFAULT 0,

	[AG_S] DECIMAL (5,2) NOT NULL,
	[AG_M] DECIMAL (5,2) NOT NULL,
	[AG_P] DECIMAL (5,2) NOT NULL,


	CONSTRAINT PK_Food PRIMARY KEY ([Id]),

	CONSTRAINT FK_Food_FoodCategory FOREIGN KEY ([Subcategory]) REFERENCES	[FoodCategory](Id),
	

	CONSTRAINT FK_Food_FoodPortImgSmall		FOREIGN KEY ([SmallPortionImg]) REFERENCES [FoodPortionImage]([Id]),
	CONSTRAINT FK_Food_FoodPortImgMedium	FOREIGN KEY ([MediumPortionImg]) REFERENCES [FoodPortionImage]([Id]),
	CONSTRAINT FK_Food_FoodPortImgLarge FOREIGN KEY ([LargePortionImg]) REFERENCES [FoodPortionImage]([Id])

)
