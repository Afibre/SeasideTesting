inputs
radioButtonWithId: stringId 
	| input |
	input := self
				inputWithId: stringId
				ifAbsent: [self error: 'No such input component.'].
	input isRadioButton
		ifFalse: [self error: 'Not a radio button component.'].
	^input