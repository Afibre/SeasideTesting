parts
entityWithId: aString ifAbsent: aBlock 
	^self allEntities detect: [:each | each cssId = aString] ifNone: aBlock