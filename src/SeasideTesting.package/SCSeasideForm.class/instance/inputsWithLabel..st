inputs
inputsWithLabel: aString
	| labels |
	labels := self labelsWithText: aString.
	^labels collect: [:label | 
		self
				inputWithId: (label attributeAt: 'for')
				ifAbsent: [self error: 'No such input component.']].
