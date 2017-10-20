private-inputs
inputWithId: anId ifAbsent: aBlock
	| res |
	res := self entityWithId: anId ifAbsent: [^aBlock value].
	^res isInputComponent 
		ifTrue: [res]
		ifFalse: [aBlock value]