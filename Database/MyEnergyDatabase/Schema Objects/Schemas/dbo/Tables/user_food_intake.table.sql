CREATE TABLE [dbo].[user_food_intake]
(
	[id] BIGINT NOT NULL,
	[user_id] BIGINT NOT NULL,
	[date] DATE NOT NULL,
	[meal_type] NVARCHAR(100) NOT NULL,



	/**
	TODO: MEALS AND FOOD relationships
	*/

	/**
		Breakfast	- Pequeno-almoço
		Brunch		- Meio da manhã
		Lunch		- Almoço
		Tea			- Meio da tarde
		Dinner		- Jantar
		Supper		- Ceia
	*/


	CONSTRAINT pk_user_food_intake PRIMARY KEY ([id]),

	CONSTRAINT ck_meal_type CHECK ([meal_type] 
		IN ('Breakfast', 'Brunch', 'Lunch', 'Tea', 'Dinner','Supper')),

	CONSTRAINT fk_user_food_intake_user 
		FOREIGN KEY ([user_id]) REFERENCES [user]([user_id])
		ON DELETE CASCADE 
		ON UPDATE CASCADE  
		
)
