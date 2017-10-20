inputs
labelsWithText: aString
	| labels |
	labels := self entitiesNamed: 'label'.
	^labels select: [:each | each contentString = aString].
