buttons
buttons
	^self allEntities select: [:each | each notNil and: [each isInputComponent and: [each isButton]]]