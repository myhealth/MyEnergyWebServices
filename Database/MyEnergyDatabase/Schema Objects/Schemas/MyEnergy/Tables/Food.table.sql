CREATE TABLE [Food]
(
	[Id] BIGINT IDENTITY NOT NULL, 
	[Subcode] NVARCHAR(50) NOT NULL, 
	[Subgroup] INT NOT NULL,
	[Name] NVARCHAR(255) NOT NULL,
	
	[Deleted] BIT DEFAULT 0,
	 
	[SmallPortion] INT NULL,
	[MediumPortion] INT NULL,
	[BigPortion] INT NULL,
	
	[SmallPortionImg] INT NULL,
	[MediumPortionImg] INT NULL,
	[LargePortionImg] INT NULL,

	/** Nutrictional information per 100g*/
	[Kcal]	FLOAT NOT NULL,			/*	Energia	Kcal*/
	[kJ]	FLOAT NOT NULL,			/*	Energia	kJ	*/
	[Water] FLOAT NOT NULL,			/*	Água	(g)	*/
	[Protein] FLOAT NOT NULL,		/* Proteina	(g)	*/
	[TotalFat] FLOAT NOT NULL,		/* Gordura Total (g)		*/
	[Starch] FLOAT NOT NULL,		/* Amido (g)				*/
	[Alchool] FLOAT NOT NULL,		/* Álcool (g)				*/
	[Fiber] FLOAT NOT NULL,			/* Fibra Alimentar (g)			*/
	[Cholesterol] FLOAT NOT NULL,	/* Colesterol (mg)			*/


	/* Carbon Hidrates */
	[TotalCarbonHidratesAvailable] FLOAT NOT NULL,	/* Total HC disponíveis (g) */
	[Monosaccharides] FLOAT NOT NULL,	/* Total HC expresso em monossacáridos (g) */
	[Polysaccharides] FLOAT NOT NULL,	/* Mono + Dissacáridos (g)	*/
	[Oligosaccharide] FLOAT NOT NULL,	/* Oligossacáridos (g)	*/
	
	

	/* Acids */
	[OrganicAcids] FLOAT NOT NULL,			/* Ácidos orgânicos (g)					*/
	[FatAcidsSaturated] FLOAT NOT NULL,		/* Ácidos gordos saturados (g)			*/
	[FatAcidsMonosaturated] FLOAT NOT NULL,	/* Ácidos gordos monoinsaturados (g)	*/
	[FatAcidsPolinsaturated] FLOAT NOT NULL, /* Ácidos gordos polinsaturados  (g)	*/
	[FatAcidsTransaturated] FLOAT NOT NULL,	/* Ácidos gordos trans (g)				*/
	[LinoleicAcid] FLOAT NOT NULL,			/* Ácido linoleico (g)					*/

	/* Vitamins */
	[VitARetinol]		FLOAT NOT NULL,		/* Retinol (vit. A total) (mg)				*/
	[VitARetinolEquiv]	FLOAT NOT NULL,		/* Vit A total (equivalentes retinol) (µg)  */
	[Carotene]			FLOAT NOT NULL,		/* Caroteno (µg)							*/
	[VitD]				FLOAT NOT NULL,		/* Vitamina D (µg)							*/
	[AlphaTocopherol]	FLOAT NOT NULL,		/* a-tocoferol (mg)	(E)						*/
	[Thiamine]			FLOAT NOT NULL,		/* Tiamina(mg)			(B1)				*/
	[Riboflavin]		FLOAT NOT NULL, 	/* Riboflavina (mg)	(B2)					*/
	[Niacine]			FLOAT NOT NULL,		/* Niacine									*/
	[NiacineEquiv]		FLOAT NOT NULL,		/* Equivalentes de niacina (mg)				*/ 
	[Tryptophan]		FLOAT NOT NULL,		/* Triptofano/60 (mg)						*/
	[VitB6]				FLOAT NOT NULL,		/* vit B6 (mg)								*/
	[VitB12]			FLOAT NOT NULL,		/* Vit. B12 (µg)							*/
	[VitC]				FLOAT NOT NULL,		/* vit. C (mg)								*/
	

	/*	*/
	[Folates]	FLOAT NOT NULL,				/* Folatos (µg)								*/
	[Cinza]		FLOAT NOT NULL,				/* Cinza (g)								*/
	[Sodium]	FLOAT NOT NULL,				/* Na (mg)									*/
	[Potassium]	FLOAT NOT NULL,				/* K (mg)									*/
	[Calcium]	FLOAT NOT NULL,				/* Ca (mg)									*/
	[Phosphorus] FLOAT NOT NULL,			/* P (mg)									*/
	[Magnesium]	FLOAT NOT NULL,				/* Mg (mg)									*/
	[Iron]		FLOAT NOT NULL,				/* Fe (mg)									*/
	[Zinc]		FLOAT NOT NULL,				/* Zn (mg)									*/


	CONSTRAINT PK_Food PRIMARY KEY ([Id]),

	CONSTRAINT FK_Food_FoodGroup FOREIGN KEY ([Subgroup]) REFERENCES	[FoodGroup](Id),
	

	CONSTRAINT FK_Food_FoodPortImgSmall		FOREIGN KEY ([SmallPortionImg]) REFERENCES [FoodPortionImage]([Id]),
	CONSTRAINT FK_Food_FoodPortImgMedium	FOREIGN KEY ([MediumPortionImg]) REFERENCES [FoodPortionImage]([Id]),
	CONSTRAINT FK_Food_FoodPortImgLarge		FOREIGN KEY ([LargePortionImg]) REFERENCES [FoodPortionImage]([Id])

)
