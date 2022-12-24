/*
	Civilization Unique Ability
	Authors: MC
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,																	Kind			)
VALUES	('TRAIT_CIVILIZATION_BOP_TREECLUB',										'KIND_TRAIT'	),
		('MODTYPE_BOP_TREECLUB_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',				'KIND_MODIFIER'	);
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,											Name,												Description											)
VALUES	('TRAIT_CIVILIZATION_BOP_TREECLUB',					'LOC_TRAIT_CIVILIZATION_BOP_TREECLUB_NAME',			'LOC_TRAIT_CIVILIZATION_BOP_TREECLUB_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType										)
VALUES	('CIVILIZATION_BOP_APES',		'TRAIT_CIVILIZATION_BOP_TREECLUB'				);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId										)
VALUES	('TRAIT_CIVILIZATION_BOP_TREECLUB',		'MODIFIER_BOP_TREECLUB_GRANARY_YIELD'						),
		('TRAIT_CIVILIZATION_BOP_TREECLUB',		'MODIFIER_BOP_TREECLUB_GRANARY_INCREASED_BANANA_FOOD'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,												ModifierType,												SubjectRequirementSetId,			RunOnce,		Permanent	)
VALUES	('MODIFIER_BOP_TREECLUB_GRANARY_YIELD',						'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',		NULL,								0,				1			),
		('MODIFIER_BOP_TREECLUB_GRANARY_INCREASED_BANANA_FOOD',		'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',				'PLOT_HAS_BANANAS_REQUIREMENT',		1,				1			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,							Value									)
VALUES	('MODIFIER_BOP_TREECLUB_GRANARY_YIELD',						'BuildingType',					'BUILDING_GRANARY'						),
		('MODIFIER_BOP_TREECLUB_GRANARY_YIELD',						'YieldType',					'YIELD_FOOD'							),
		('MODIFIER_BOP_TREECLUB_GRANARY_YIELD',						'Amount',						4										),
		('MODIFIER_BOP_TREECLUB_GRANARY_INCREASED_BANANA_FOOD',		'ResourceType',					'RESOURCE_BANANAS'						),
		('MODIFIER_BOP_TREECLUB_GRANARY_INCREASED_BANANA_FOOD',		'YieldType',					'YIELD_FOOD'							),
		('MODIFIER_BOP_TREECLUB_GRANARY_INCREASED_BANANA_FOOD',		'Amount',						4										);


-----------------------------------------------
--RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType					)
VALUES	('PLOT_HAS_BANANAS_REQUIREMENT',							'REQUIREMENTSET_TEST_ALL'			);

----------------------------------------------
--RequirementSetRequirements
----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,											RequirementId						)
VALUES	('PLOT_HAS_BANANAS_REQUIREMENT',							'REQUIRES_PLOT_HAS_BANANAS'			);

-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 											RequirementType									)
VALUES	('REQUIRES_PLOT_HAS_BANANAS',								'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES'		);

-------------------------------------
-- RequirementsArguments
-------------------------------------

INSERT INTO RequirementArguments
		(RequirementId, 											Name,						Value					)
VALUES	('REQUIRES_PLOT_HAS_BANANAS', 								'ResourceType',				'RESOURCE_BANANAS'		);



INSERT INTO  TraitModifiers
(  TraitType,                                        ModifierId                                    )
(  'TRAIT_CIVILIZATION_BOP_TREECLUB',                'TRAIT_INCREASED_BANANAS_YIELD'            );

INSERT INTO  DynamicModifiers
(   ModifierType,                                               CollectionType,                  EffectType                ) 
(   'MODIFIER_PLAYER_CITIES_PLOT_YIELDS_ADJUST_PLOT_YIELD',    'COLLECTION_CITY_PLOT_YIELDS',    'EFFECT_ADJUST_PLOT_YIELD');

INSERT INTO  Types
(	Type,                                                          Kind           )   
(	'MODIFIER_PLAYER_CITIES_PLOT_YIELDS_ADJUST_PLOT_YIELD',        'KIND_MODIFIER');

INSERT INTO  Modifiers
(	ModifierId,                        ModifierType,                                    SubjectRequirementSetId,			RunOnce,            Permanent,      )
(	'TRAIT_INCREASED_BANANAS_YIELD',    'MODTYPE_BOP_TREECLUB_ADJUST_PLOT_YIELD',		'PLOT_HAS_BANANAS_REQUIREMENT',		0,                  1              );

INSERT INTO  ModifierArguments
(	ModifierId,							 Name,               Value                )
(	'TRAIT_INCREASED_BANANAS_YIELD',	'ResourceType'		'RESOURCE_BANANAS'	),
(	'TRAIT_INCREASED_BANANAS_YIELD',	'YieldType',		'YIELD_FOOD'		),
(	'TRAIT_INCREASED_BANANAS_YIELD',    'Amount',           '4'                 );

INSERT INTO  Requirements
(	RequirementId,                                  RequirementType,                               Inverse          )
(	'REQ_BOP_TREECLUB_PLOT_TYPE_MATCHES',           'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES',      0                );


INSERT INTO  RequirementSets
(	RequirementSetId,                          RequirementSetType                        )
(	'PLOT_HAS_BANANAS_REQUIREMENT',              'REQUIREMENTSET_TEST_ALL'               );

INSERT INTO  RequirementSetRequirements
(	RequirementSetId,                          RequirementId                             )
(	'PLOT_HAS_BANANAS_REQUIREMENT',             'REQUIRES_PLOT_HAS_BANANAS'              );