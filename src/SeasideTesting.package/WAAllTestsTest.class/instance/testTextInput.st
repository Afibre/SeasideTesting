tests
testTextInput
	| form |
	self newApplicationWithRootClass: self htmlTestClass.
	self establishSession.
	form := self lastResponse formWithId: 'textInput-form'.
	self 
		assert: (form entityWithId: 'textInput-banner' containsText: 'Hello world!').
	self assert: self component message = 'Hello world!'.
	form textInputWithId: 'text-message' value: 'bob'.
	self submitForm: form pressingButton: form buttons first.
	form := self lastResponse formWithId: 'textInput-form'.
	self assert: (form entityWithId: 'textInput-banner' containsText: 'bob').
	self assert: self component message = 'bob'