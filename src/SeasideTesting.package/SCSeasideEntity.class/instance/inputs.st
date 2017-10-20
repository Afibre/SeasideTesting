inputs
inputs
	^self allEntities select: [:each | each notNil and: [each isInputComponent]]