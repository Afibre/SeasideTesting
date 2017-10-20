parts
entityWithId: aString 
	^self entityWithId: aString ifAbsent: [self error: 'No such element.']