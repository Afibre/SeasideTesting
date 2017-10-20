tests
testButtons
	| form |
	self newApplicationWithRootClass: self htmlTestClass.
	self establishSession.
	form := self lastResponse formWithId: 'button-form'.
	self
		submitForm: form
		pressingButton: (form buttonWithValue: '5').
	self assert: self component number = 5.
	form := self lastResponse formWithId: 'button-form'.
	self
		submitForm: form
		pressingButton: (form buttonWithValue: '1').
	self assert: self component number = 1