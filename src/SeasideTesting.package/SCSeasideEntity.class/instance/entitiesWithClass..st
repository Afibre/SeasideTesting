parts
entitiesWithClass: aString 
	^self allEntities
		select: [:each | ((each attributeAt: 'class' ifAbsent: ['']) findTokens: ' ') includes: aString]