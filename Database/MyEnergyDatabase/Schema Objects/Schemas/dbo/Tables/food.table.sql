CREATE TABLE [dbo].[food]
(
	[code] NVARCHAR(10) NOT NULL, 
	[category_subcategory] INT NOT NULL,
	[name] NVARCHAR(255) NOT NULL,

	[small_portion] INT NULL,
	[medium_portion] INT NULL,
	[big_portion] INT NULL,
	
	[small_portion_img] INT NULL,
	[medium_portion_img] INT NULL,
	[large_portion_img] INT NULL,

	/** Nutrictional information per 100g*/
	[kcal] INT NOT NULL,
	[proteins] DECIMAL(5,2) NOT NULL,
	[fat] DECIMAL(5,2) NOT NULL,
	[carbon_hidrates] DECIMAL (5,2) NOT NULL,
	[sugars] DECIMAL (5,2) NOT NULL,
	[alchool] DECIMAL (5,2) NOT NULL DEFAULT 0,

	[AG_sat] DECIMAL (5,2) NOT NULL,
	[AG_m] DECIMAL (5,2) NOT NULL,
	[AG_p] DECIMAL (5,2) NOT NULL,


	CONSTRAINT pk_food PRIMARY KEY ([code]),

	CONSTRAINT fk_food_food_category 
		FOREIGN KEY 
			([category_subcategory])
		REFERENCES
			[food_category](id),
	

	CONSTRAINT fk_food_food_port_pic_s FOREIGN KEY ([small_portion_img]) REFERENCES [food_portion_image]([id]),
	CONSTRAINT fk_food_food_port_pic_m FOREIGN KEY ([medium_portion_img]) REFERENCES [food_portion_image]([id]),
	CONSTRAINT fk_food_food_port_pic_l FOREIGN KEY ([large_portion_img]) REFERENCES [food_portion_image]([id])
)
