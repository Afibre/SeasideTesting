inputs
selectListWithId: aStringId
	| elem |
	elem := self
				inputWithId: aStringId
				ifAbsent: [self error: 'No such input field.'].
	elem isSelectInput
		ifFalse: [self error: 'Not a select'].
	^ elem