running
testFindInput
	| labels form inputs |
	self newApplicationWithRootClass: SCInputWithLabel.
	self establishSession.
	form := self lastResponse forms first.
	labels := form labelsWithText: 'some text'.
	self assert: labels size = 1.
	inputs := form inputsWithLabel: 'some text'.
	self assert: inputs size = 1.
	inputs first value: 'type something'.
	self submitForm: form pressingButton: form buttons first.
	self assert: self component value = 'type something'