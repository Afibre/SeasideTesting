tests
testTextAreaInput
	| form |
	self newApplicationWithRootClass: self htmlTestClass.
	self establishSession.
	form := self lastResponse formWithId: 'textarea-form'.
	self 
		assert: (form entityWithId: 'textarea-banner' containsText: 'Hello world!').
	self assert: self component message = 'Hello world!'.
	form textInputWithId: 'textarea-message' value: 'bob'.
	self submitForm: form pressingButton: form buttons first.
	form := self lastResponse formWithId: 'textarea-form'.
	self assert: (form entityWithId: 'textarea-banner' containsText: 'bob').
	self assert: self component message = 'bob'