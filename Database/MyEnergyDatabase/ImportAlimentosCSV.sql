-- =============================================
-- Script Template
-- =============================================
DELETE FROM FoodGroup

/* RENAME columns to match Food table */

/*

EXEC sp_RENAME 'Alimentos$.Subgrupo' ,			'Subgroup', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Sub-código]' ,	'Subcode', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Nome]' ,			'Name', 'COLUMN'

EXEC sp_RENAME  'Alimentos$.[Energia (kcal)]' ,	'Kcal', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Energia (kJ)]' ,	'kJ', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Água (g)]' ,		'Water', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Proteína (g)]' ,	'Protein', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Fibra alimentar (g)]' , 'Fiber', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Colesterol (mg)]' ,		'Cholesterol', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Álcool (g)]' ,			'Alchool', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Amido (g)]' ,			'Starch', 'COLUMN'		/*TODO confirm */
EXEC sp_RENAME  'Alimentos$.[Gordura total (g)]' ,	'TotalFat', 'COLUMN'

EXEC sp_RENAME  'Alimentos$.[Total HC disponíveis (g)]' ,				'TotalCarbonHidratesAvailable', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Total HC expresso em monossacáridos (g)]' , 'Monosaccharides', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Oligossacáridos (g)]' ,						'Oligosaccharide', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Mono + dissacáridos (g)]' ,					'Polysaccharides', 'COLUMN'

EXEC sp_RENAME  'Alimentos$.[Ácidos orgânicos (g)]' ,					'OrganicAcids', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Ácidos gordos saturados (g)]' ,				'FatAcidsSaturated', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Ácidos gordos monoinsaturados (g)]' ,		'FatAcidsMonosaturated', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Ácidos gordos polinsaturados  (g)]' ,		'FatAcidsPolinsaturated', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Ácidos gordos trans (g)]' ,					'FatAcidsTransaturated', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Ácido linoleico (g)]' ,						'LinoleicAcid', 'COLUMN'

EXEC sp_RENAME  'Alimentos$.[Retinol (vit# A total) (mg)]' ,				'VitARetinol', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Vit A total (equivalentes retinol) (mg)]' , 'VitARetinolEquiv', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Caroteno (mg)]' ,							'Carotene', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[vit# D (µg)]' ,								'VitD', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[a-tocoferol (mg)]' ,						'AlphaTocopherol', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Tiamina (mg)]' ,							'Thiamine', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Riboflavina (mg)]' ,						'Riboflavin', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Equivalentes de niacina (mg)]' ,			'NiacineEquiv', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Niacina (mg)]' ,							'Niacine', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Triptofano/60 (mg)]' ,						'Tryptophan', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[vit B6 (mg)]' ,								'VitB6', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Vit# B12 (µg)]' ,							'VitB12', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[vit# C (mg)]' ,								'VitC', 'COLUMN'

EXEC sp_RENAME  'Alimentos$.[Folatos (µg)]' ,							'Folates', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Cinza (g)]' ,								'Cinza', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Na (mg)]' ,									'Sodium', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[K    (mg)]' ,								'Potassium', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Ca (mg)]' ,									'Calcium', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[P (mg)]' ,									'Phosphorus', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Mg (mg)]' ,									'Magnesium', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Fe (mg)]' ,									'Iron', 'COLUMN'
EXEC sp_RENAME  'Alimentos$.[Zn (mg)]' ,									'Zinc', 'COLUMN'
 	*/


if OBJECT_ID('tempdb..#subgroups') is not null DROP TABLE #subgroups
if OBJECT_ID('tempdb..#groups') is not null DROP TABLE #groups


SELECT RowNum = ROW_NUMBER() OVER(ORDER BY alimentos$.[Group]), alimentos$.[Group]
INTO #groups
FROM alimentos$ group by [Group]

DECLARE @MaxRownum int
SET @MaxRownum = (SELECT MAX(RowNum) FROM #groups)

DECLARE @group varchar(max)=null
DECLARE @groupId int	= null
DECLARE @Iter int

SET @Iter = (SELECT MIN(RowNum) FROM #groups)
WHILE @Iter <= @MaxRownum
BEGIN

	/* get the group */
	SELECT @group = [Group] FROM #groups where RowNum = @Iter
	
	INSERT INTO FoodGroup(Name) VALUES(@group)
	SELECT @groupId = SCOPE_IDENTITY() 
	
	/* select all subgroups and insert them onto a tmep table*/
	SELECT DISTINCT(Alimentos$.[Subgroup])
		INTO #subgroups
		FROM Alimentos$ 
		WHERE Alimentos$.[Group] = @group
	 
	INSERT INTO FoodGroup(Name, ParentId)
		SELECT [Subgroup], @groupId as ParentId FROM #subgroups
	 
	 
	 INSERT INTO Food(Subcode, Subgroup, Name, 
		Kcal, kJ, Water, Protein, TotalFat,	Starch,	Alchool, Fiber,
		Cholesterol, TotalCarbonHidratesAvailable, Monosaccharides,	Polysaccharides, Oligosaccharide,
		OrganicAcids, FatAcidsSaturated, FatAcidsMonosaturated,	FatAcidsPolinsaturated,	FatAcidsTransaturated, LinoleicAcid,
		VitARetinol,
		VitARetinolEquiv,
		Carotene,
		VitD,
		AlphaTocopherol,
		Thiamine,
		Riboflavin,
		Niacine,
		NiacineEquiv,
		Tryptophan,
		VitB6,
		VitB12,
		VitC,
		Folates,
		Cinza,
		Sodium,
		Potassium,
		Calcium,
		Phosphorus,
		Magnesium,
		Iron,
		Zinc) 
	 SELECT Subcode, @groupId, Name, 
		Kcal, kJ, Water, Protein, TotalFat,	Starch,	Alchool, Fiber,
		Cholesterol, TotalCarbonHidratesAvailable, Monosaccharides,	Polysaccharides, Oligosaccharide,
		OrganicAcids, FatAcidsSaturated, FatAcidsMonosaturated,	FatAcidsPolinsaturated,	FatAcidsTransaturated, LinoleicAcid,
		VitARetinol,
		VitARetinolEquiv,
		Carotene,
		VitD,
		AlphaTocopherol,
		Thiamine,
		Riboflavin,
		Niacine,
		NiacineEquiv,
		Tryptophan,
		VitB6,
		VitB12,
		VitC,
		Folates,
		Cinza,
		Sodium,
		Potassium,
		Calcium,
		Phosphorus,
		Magnesium,
		Iron,
		Zinc  FROM Alimentos$
	 
	
	 	 
	DROP table #subgroups

SET @Iter = @Iter + 1
END

/*select * from #groups6*/

drop table #groups
