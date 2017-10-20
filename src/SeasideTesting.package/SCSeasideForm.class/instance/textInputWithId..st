inputs
textInputWithId: stringId
	| input |
	input := self
				inputWithId: stringId
				ifAbsent: [self error: 'No such input component.'].
	input isTextInput
		ifFalse: [self error: 'Not a text component.'].
	^input