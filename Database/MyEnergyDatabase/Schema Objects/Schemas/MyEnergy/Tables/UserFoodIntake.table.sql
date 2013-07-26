CREATE TABLE [dbo].[UserFoodIntake]
(
	[Id] BIGINT NOT NULL,
	[UserId] BIGINT NOT NULL,
	[Date] DATE NOT NULL,
	[MealType] NVARCHAR(100) NOT NULL,

	CONSTRAINT PK_UserFoodIntake PRIMARY KEY ([Id]),

	CONSTRAINT CK_MealType CHECK ([MealType] IN ('Breakfast', 'Brunch', 'Lunch', 'Tea', 'Dinner','Supper')),

	CONSTRAINT FK_UserFoodIntake_User
		FOREIGN KEY ([UserId]) REFERENCES [User]([UserId])
		ON DELETE CASCADE 
		ON UPDATE CASCADE  
		
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

)
