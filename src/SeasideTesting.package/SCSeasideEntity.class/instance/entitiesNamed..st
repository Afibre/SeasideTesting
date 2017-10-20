parts
entitiesNamed: aStringTagName 
	^self allEntities select: [:each | each tag = aStringTagName]