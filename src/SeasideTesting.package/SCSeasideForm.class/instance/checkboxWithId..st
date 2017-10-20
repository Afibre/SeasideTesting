inputs
checkboxWithId: stringId
	| input |
	input := self
				inputWithId: stringId
				ifAbsent: [self error: 'No such input component.'].
	input isCheckbox
		ifFalse: [self error: 'Not a checkbox component.'].
	^input