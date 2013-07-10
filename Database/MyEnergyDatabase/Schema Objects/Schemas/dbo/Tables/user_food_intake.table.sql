CREATE TABLE [dbo].[user_food_intake]
(
	[id] BIGINT NOT NULL,
	[user_id] BIGINT NOT NULL,
	[date] DATE NOT NULL,
	[meal_type] NVARCHAR(255) NOT NULL,


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

	CHECK ([meal_type] IN (
	'Breakfast', 
	'Brunch',
	'Lunch',
	'Tea',
	'Dinner',
	'Supper'))
)
